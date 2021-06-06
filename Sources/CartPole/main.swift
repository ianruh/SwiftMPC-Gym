import PythonKit
import SwiftMPC
import SymbolicMath
import ArgumentParser

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
            
            var mpc = CartPoleMPC(numSteps: 12)
            
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
                let env = gym.make("CartPole-v0")

                var cartPoleMPC = CartPoleMPC(numSteps: 12)
                // Set the simulation parameters
                cartPoleMPC.setSituationParameters(cartMass: Double(env.masscart)!, poleMass: Double(env.masspole)!, poleLength: Double(env.length)!, gravity: Double(env.gravity)!)

                // Set the initial conditions
                var state = Array<Double>(env.reset())!

                for t in 0..<200 {
                    print("Step: \(t)")
                    env.render()
                    cartPoleMPC.setInitialState(position: state[0], velocity: state[1], angle: state[2], angularVelocity: state[3])
                    let force = try cartPoleMPC.getNextForce()
                    state = Array<Double>(env.step(np.array([force, 0.0])))!
                }
                env.close()

                let (min, pt) = try cartPoleMPC.runNumeric()
            } catch {
                print("An unexpected error was thrown: \(error)")
                return
            }
        }
    }
}

CartPole.main()