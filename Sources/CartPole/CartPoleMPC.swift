import LASwift
import SwiftMPC
import SymbolicMath
import Collections
import RealModule

public struct CartPoleMPC {
    var numTimeHorizonSteps: Int
    var mpc_dt: Double
    let maxForce: Double = 10.0
    let minForce: Double = -10.0
    let maxPosition: Double = 4.2
    let minPosition: Double = -4.2

    // Parameter and variable storage. A bit ugly, but whatever
    var parameters: [String: Parameter] = [:]
    var parameterVectors: [String: [Parameter]] = [:]
    var parameterMatrices: [String: [[Parameter]]] = [:]
    var variables: [String: Variable] = [:]
    var variableVectors: [String: [Variable]] = [:]
    var variableMatrices: [String: [[Variable]]] = [:]

    var solver: InequalitySolver
    var numericObjective: CartPoleNumericObjective

    public init(numSteps: Int, dt: Double = 0.05) {
        self.numTimeHorizonSteps = numSteps
        self.mpc_dt = dt
        self.solver = InequalitySolver()
        self.numericObjective = CartPoleNumericObjective(numSteps: numSteps)
    }
    
    public mutating func getNextForce() throws -> Double {

        // Solve the optimization problem
        let (min, primal, dual) = try solver.infeasibleInequalityMinimize(objective: self.numericObjective)

        // Extract the control and relavent state variables
        let positionVector = CartPoleNumericObjective.extractVector_position(primal)
        let angleVector = CartPoleNumericObjective.extractVector_angle(primal)
        let velocityVector = CartPoleNumericObjective.extractVector_velocity(primal)
        let angularVelocityVector = CartPoleNumericObjective.extractVector_angularVelocity(primal)
        let forceVector = CartPoleNumericObjective.extractVector_force(primal)

        // Save the vectors that the objective needs as parameters
        self.numericObjective.previousPosition = positionVector
        self.numericObjective.previousVelocity = velocityVector
        self.numericObjective.previousAngle = angleVector
        self.numericObjective.previousAngularVelocity = angularVelocityVector

        // Set the warm starts
        self.numericObjective.warmStartPrimal = primal
        self.numericObjective.warmStartDual = dual

        return forceVector[0]
    }

    public mutating func setInitialState(position: Double, velocity: Double, angle: Double, angularVelocity: Double) {
        self.numericObjective.initialPosition = position
        self.numericObjective.initialVelocity = velocity
        self.numericObjective.initialAngle = angle
        self.numericObjective.initialAngularVelocity = angularVelocity
        // We also set the previous state here because it would be zero otherwise
        // May want to think more carefully about what we do here
        self.numericObjective.previousPosition[0] = position
        self.numericObjective.previousVelocity[0] = velocity
        self.numericObjective.previousAngle[0] = angle
        self.numericObjective.previousAngularVelocity[0] = angularVelocity
    }

    public mutating func setSituationParameters(cartMass: Double, poleMass: Double, poleLength: Double, gravity: Double) {
        self.numericObjective.cartMass = cartMass
        self.numericObjective.poleMass = poleMass
        self.numericObjective.poleLength = poleLength
        self.numericObjective.gravity = gravity
    }

    /// Generate the numeric objective code
    ///
    /// - Parameter fileName: The file to write the generated code to
    /// - Throws: If the code could not be generated or the file could not be written.
    public mutating func codeGen(toFile fileName: String) throws {
        let objective = try self.constructSymbolicObjective()

        var parameterRepresentations: Dictionary<Parameter, String> = [:]

        for (parameterName, parameter) in self.parameters {
            parameterRepresentations[parameter] = "self.\(parameterName)"
        }
        for (parameterVectorName, parameterVector) in self.parameterVectors {
            for i in 0..<parameterVector.count {
                parameterRepresentations[parameterVector[i]] = "self.\(parameterVectorName)[\(i)]"
            }
        }

        // Construct the extractors
        let vectorExtractors: Dictionary<String, [Variable]> = [
            "position": self.variableVectors["position"]!,
            "velocity": self.variableVectors["velocity"]!,
            "angle": self.variableVectors["angle"]!,
            "angularVelocity": self.variableVectors["angularVelocity"]!,
            "force": self.variableVectors["force"]!
        ]

        try objective.printSwiftCode2(objectiveName: "CartPoleNumericObjective", parameterRepresentations: parameterRepresentations, vectorExtractors: vectorExtractors, toFile: fileName)
    }

    public mutating func runSymbolic() throws -> (minimum: Double, point: Vector) {
        let objective = try self.constructSymbolicObjective()
        let (min, pt, _) = try self.solver.infeasibleInequalityMinimize(objective: objective)
        return (minimum: min, point: pt)
    }

    #if !NO_NUMERIC_OBJECTIVE
    public mutating func runNumeric() throws -> (minimum: Double, point: Vector) {
        self.setInitialState(position: 0.0, velocity: 0.0, angle: 0.1, angularVelocity: 0.0)
        let (min, pt, _) = try self.solver.infeasibleInequalityMinimize(objective: self.numericObjective)
        return (minimum: min, point: pt)
    }
    #endif
}
