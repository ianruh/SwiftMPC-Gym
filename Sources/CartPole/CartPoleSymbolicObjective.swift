import LASwift
import Collections
import SwiftMPC
import SymbolicMath
import RealModule


extension CartPoleMPC {
    public mutating func constructSymbolicObjective() throws -> SymbolicObjective {

        //======== State Variables ========

        // These are a N length vectors, with each element representing points in time
        let position = Variable.vector("x", count: self.numTimeHorizonSteps)
        let velocity = Variable.vector("v", count: self.numTimeHorizonSteps)
        let angle = Variable.vector("θ", count: self.numTimeHorizonSteps)
        let angularVelocity = Variable.vector("θd", count: self.numTimeHorizonSteps)
        
        // Save the state variable
        self.variableVectors["position"] = position
        self.variableVectors["velocity"] = velocity
        self.variableVectors["angle"] = angle
        self.variableVectors["angularVelocity"] = angularVelocity

        //======== Control Variables ========

        let force = Variable.vector("f", count: self.numTimeHorizonSteps)

        // Save the control variables
        self.variableVectors["force"] = force

        //======== Variable Ordering ========
        
        // ORDER MATTERS, A LOT!!!
        var ordering: OrderedSet<Variable> = []
        for t in 0..<self.numTimeHorizonSteps {
            ordering.append(position[t])
            ordering.append(velocity[t])
            ordering.append(angle[t])
            ordering.append(angularVelocity[t])
            ordering.append(force[t])
        }

        //======== Parameters ========

        // Initial Postion Parameters
        let initialPosition = Parameter("x₀")
        let initialVelocity = Parameter("v₀")
        let initialAngle = Parameter("θ₀")
        let initialAngularVelocity = Parameter("θd₀")

        // Previous iteration state and control variables. These are used to linearize
        // the dynamics around approximately the correct points.
        let previousPosition = Parameter.vector("x_prev", count: self.numTimeHorizonSteps)
        let previousVelocity = Parameter.vector("v_prev", count: self.numTimeHorizonSteps)
        let previousAngle = Parameter.vector("θ_prev", count: self.numTimeHorizonSteps)
        let previousAngularVelocity = Parameter.vector("θd_prev", count: numTimeHorizonSteps)

        let poleLength = Parameter("l") // Really half the pole length
        let cartMass = Parameter("mc")
        let poleMass = Parameter("mp")
        let gravity = Parameter("g")

        // Save the parameters
        self.parameters["initialPosition"] = initialPosition
        self.parameters["initialVelocity"] = initialVelocity
        self.parameters["initialAngle"] = initialAngle
        self.parameters["initialAngularVelocity"] = initialAngularVelocity

        self.parameterVectors["previousPosition"] = previousPosition
        self.parameterVectors["previousVelocity"] = previousVelocity
        self.parameterVectors["previousAngle"] = previousAngle
        self.parameterVectors["previousAngularVelocity"] = previousAngularVelocity

        self.parameters["poleLength"] = poleLength
        self.parameters["cartMass"] = cartMass
        self.parameters["poleMass"] = poleMass
        self.parameters["gravity"] = gravity

        // Set symbolic initial values. Not used when using the code generated objective
        var initialParameterValues: Dictionary<Parameter, Double> = [:]
        initialParameterValues[initialPosition] = 0.0
        initialParameterValues[initialVelocity] = 0.0
        initialParameterValues[initialAngle] = 0.0
        initialParameterValues[initialAngularVelocity] = 0.0
        previousPosition.forEach({ initialParameterValues[$0] = 0.0 })
        previousVelocity.forEach({ initialParameterValues[$0] = 0.0 })
        previousAngle.forEach({ initialParameterValues[$0] = 0.0 })
        previousAngularVelocity.forEach({ initialParameterValues[$0] = 0.0 })
        initialParameterValues[poleLength] = 1.0
        initialParameterValues[cartMass] = 1.0
        initialParameterValues[poleMass] = 0.1
        initialParameterValues[gravity] = 9.81

        //================ Constraints ================

        var ineqConstraints: [Node] = []
        var eqConstraints: [Assign] = []

        //======== Misc Constraints ========

        // Initial conditions
        eqConstraints.append(position[0] ≈ initialPosition)
        eqConstraints.append(velocity[0] ≈ initialVelocity)
        eqConstraints.append(angle[0] ≈ initialAngle)
        eqConstraints.append(angularVelocity[0] ≈ initialAngularVelocity)

        // Variable  inequality constraints
        for t in 0..<self.numTimeHorizonSteps {
            ineqConstraints.append(position[t] <= self.maxPosition)
            ineqConstraints.append(position[t] >= self.minPosition)
            ineqConstraints.append(force[t] <= self.maxForce)
            ineqConstraints.append(force[t] >= self.minForce)
        }

        //======== Dynamics Constraints ========

        // Position and Velcoity
        for t in 1..<self.numTimeHorizonSteps {
            // Position constraint
            eqConstraints.append( position[t] ≈ position[t-1] + self.mpc_dt*velocity[t-1] )

            // Velocity Constraint
            let k = Number(4.0/3.0)
            let linear_acceleration_1: Node = gravity*(Sin(angle[t-1])*Cos(angle[t-1])/(Power(Cos(angle[t-1]), Number(2)) - k*(cartMass/poleMass + 1.0))).taylorExpand(in: angle[t-1], about: previousAngle[t], ofOrder: 1)!
            let linear_acceleration_2: Node = k*force[t-1]/(poleMass*Power(Cos(previousAngle[t]), Number(2)) - k*(cartMass + poleMass))
            let linear_acceleration_3: Node = k*poleLength*Sin(previousAngle[t])/(Power(Cos(previousAngle[t]), Number(2)) - k*(cartMass/poleMass + 1)) * Power(angularVelocity[t-1], Number(2)).taylorExpand(in: angularVelocity[t-1], about: previousAngularVelocity[t], ofOrder: 1)!

            eqConstraints.append( velocity[t] ≈ velocity[t-1] + self.mpc_dt*(linear_acceleration_1 - linear_acceleration_2 - linear_acceleration_3) )
            
            // Angle Constraint
            eqConstraints.append( angle[t] ≈ angle[t-1] + self.mpc_dt*angularVelocity[t-1] )

            // Angular Velocity Constraint
            let angular_acceleration_1: Node = gravity*(cartMass + poleMass) * (Sin(angle[t-1])/(k*(cartMass+poleMass)*poleLength - poleMass*poleLength*Power(Cos(angle[t-1]), Number(2)))).taylorExpand(in: angle[t-1], about: previousAngle[t], ofOrder: 1)!
            let angular_acceleration_2: Node = force[t-1]/(k*(cartMass + poleMass)*poleLength - poleMass*poleLength*Cos(previousAngle[t]))
            let angular_acceleration_3: Node = Sin(previousAngle[t])/(k*(cartMass/poleMass + 1) - Cos(previousAngle[t])) * Power(angularVelocity[t-1], Number(2)).taylorExpand(in: angularVelocity[t-1], about: previousAngularVelocity[t], ofOrder: 1)!

            eqConstraints.append( angularVelocity[t] ≈ angularVelocity[t-1] + self.mpc_dt*(angular_acceleration_1 - angular_acceleration_2 - angular_acceleration_3) )
        }

        //======== Objective ========

        let objectiveNode: Node = sum(angle) + sum(position)

        guard let objective = SymbolicObjective(min: objectiveNode, subjectTo: SymbolicVector(ineqConstraints), equalityConstraints: eqConstraints, ordering: ordering, parameterValues: initialParameterValues) else {
            throw MPCError.misc("Unable to construct symbolic objective")
        }

        return objective
    }
}
