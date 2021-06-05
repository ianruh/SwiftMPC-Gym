import LASwift
import SwiftMPC
import SymbolicMath
import Collections
import RealModule

public struct CartPoleMPC {
    var numTimeHorizonSteps: Int
    var mpc_dt: Double
    let maxForce: Double = 1.0
    let minForce: Double = -1.0
    let maxPosition: Double = 3.0
    let minPosition: Double = -3.0

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
    
    // public mutating func getNextControl() throws -> Double {

    //     // Solve the optimization problem
    //     let (min, primal, dual) = try solver.infeasibleInequalityMinimize(objective: self.numericObjective)

    //     // Extract the control and relavent state variables
    //     let accelerationVector = LTVNumericObjective.extractVector_acceleration(primal)
    //     let steeringAngleVector = LTVNumericObjective.extractVector_steeringAngle(primal)
    //     let velocityVector = LTVNumericObjective.extractVector_forwardVelocity(primal)
    //     let vehicleAngleVector = LTVNumericObjective.extractVector_vehicleAngle(primal)

    //     // Save the vectors that the objective needs as parameters
    //     self.numericObjective.previousVelocity = velocityVector
    //     self.numericObjective.previousAngle = vehicleAngleVector
    //     self.numericObjective.previousSteeringAngle = steeringAngleVector

    //     // Set the warm starts
    //     // TODO: Ignoring warmstarts for now. Revist later
    //     //self.numericObjective.warmStartPrimal = primal
    //     //self.numericObjective.warmStartDual = dual

    //     return (acceleration: accelerationVector[0], steeringAngle: steeringAngleVector[0])
    // }

    public mutating func setInitialState(position: Double, velocity: Double, angle: Double, angularVelocity: Double) {
        self.numericObjective.initialPosition = position
        self.numericObjective.initialVelocity = velocity
        self.numericObjective.initialAngle = angle
        self.numericObjective.initialAngularVelocity = angularVelocity
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

    // #if !NO_NUMERIC_OBJECTIVE
    // public mutating func runNumeric() throws -> (minimum: Double, point: Vector) {
    //     let objective = CartPoleNumericObjective(numSteps: self.numTimeHorizonSteps)
    //     let (min, pt, _) = try self.solver.infeasibleInequalityMinimize(objective: objective)
    //     return (minimum: min, point: pt)
    // }
    // #endif
}
