import LASwift
import SwiftMPC
import RealModule

struct CartPoleNumericObjective {
    // Objective properties
    var numTimeHorizonSteps: Int

    // Initial state parameters
    var initialPosition: Double
    var initialVelocity: Double
    var initialAngle: Double
    var initialAngularVelocity: Double

    // Previous state & control parameters
    var previousPosition: Vector
    var previousVelocity: Vector
    var previousAngle: Vector
    var previousAngularVelocity: Vector

    // Problem parameters
    var poleLength: Double // Really half the pole length
    var cartMass: Double
    var poleMass: Double
    var gravity: Double

    var warmStartPrimal: Vector? = nil
    var warmStartDual: Vector? = nil

    init(numSteps: Int) {
        self.numTimeHorizonSteps = numSteps

        // Initialize the parameters
        self.initialPosition = 0.0
        self.initialVelocity = 0.0
        self.initialAngle = 0.0
        self.initialAngularVelocity = 0.0

        self.previousPosition = zeros(numSteps)
        self.previousVelocity = zeros(numSteps)
        self.previousAngle = zeros(numSteps)
        self.previousAngularVelocity = zeros(numSteps)

        self.poleLength = 1.0
        self.cartMass = 1.0
        self.poleMass = 0.1
        self.gravity = 9.81
    }

    func startPoint() throws -> (primal: Vector, dual: Vector) {
        var primal = zeros(self.numVariables)
        var dual = zeros(self.equalityConstraintMatrix!.rows)
        // var primal = zeros(1)
        // var dual = zeros(1)

        if let warmStartPrimal = self.warmStartPrimal {
            primal = warmStartPrimal
        }
        if let warmStartDual = self.warmStartDual {
            dual = warmStartDual
        }

        return (
            primal: primal,
            dual: dual
            )
    }
}
