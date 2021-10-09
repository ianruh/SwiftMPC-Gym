import PythonKit
import SwiftMPC
import SymbolicMath
import ArgumentParser
import Foundation

struct CartPole: ParsableCommand {
    static var configuration = CommandConfiguration(
        abstract: "Cart pole MPC examples.",
        version: "0.0.1",
        subcommands: [CodeGen.self, Balance.self])
}

struct  CodeGenOptions: ParsableArguments {
    @Argument(help: "The file to write to.")
    var filename: String
}

extension CartPole {
    struct CodeGen: ParsableCommand {
        static var configuration = CommandConfiguration(abstract: "Generate the numeric objective")

        @OptionGroup var options: CodeGenOptions

        mutating func run() {
            let filename = options.filename
            
            var mpc = CartPoleMPC(numSteps: 20)
            
            do {
                try mpc.codeGen(toFile: filename)
            } catch {
                print("Unable to generate code: \(error)")
                return
            }
        }
    }

    struct Balance: ParsableCommand {
        static var configuration = CommandConfiguration(abstract: "Run the cart pole balance example")

        mutating func run() {
            do {
                let gym = Python.import("gym")
                let np = Python.import("numpy")
                let env = gym.make("CartPole-v0").env

                var cartPoleMPC = CartPoleMPC(numSteps: 20)
                cartPoleMPC.solver.hyperParameters.homotopyParameterStart = 400.0
                cartPoleMPC.solver.hyperParameters.homotopyStagesMaximum = 1
                cartPoleMPC.solver.hyperParameters.newtonStepsStageMaximum = 5
                // Set the simulation parameters
                cartPoleMPC.setSituationParameters(cartMass: Double(env.masscart)!, poleMass: Double(env.masspole)!, poleLength: Double(env.length)!, gravity: Double(env.gravity)!)

                while(true) {
                // Set the initial conditions
                var state = Array<Double>(env.reset())!

                for t in 0..<300 {
                    env.render()
                    cartPoleMPC.setInitialState(position: state[0], velocity: state[1], angle: state[2]-Double.pi*2.0, angularVelocity: state[3])
                    let start = Date()
                    let force = try cartPoleMPC.getNextForce()
                    let time = -1.0 * start.timeIntervalSinceNow * 1000.0
                    print("Step \(t), MPC step time (ms): \(time)")
                    state = Array<Double>(env.step(np.array([force, 0.0])))!
                }
                }
                env.close()
            } catch {
                print("An unexpected error was thrown: \(error)")
                return
            }
        }
    }
}

CartPole.main()