import PythonKit
import SwiftMPC
import SymbolicMath
import ArgumentParser

// let gym = Python.import("gym")
// let np = Python.import("numpy")
// let env = gym.make("CartPole-v0")

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
                var cartPoleMPC = CartPoleMPC(numSteps: 20)
                let (min, pt) = try cartPoleMPC.runNumeric()
                print("Minimum: \(min)")
                print("Point: \(pt)")
            } catch {
                print("An unexpected error was thrown: \(error)")
                return
            }
        }
    }
}

CartPole.main()

// for i_episode in 0..<20 {
//     let initiatState = env.reset()
//     print("Initial State: \(initiatState)")
//     for t in 0..<200 {
//         env.render()
//         let state = env.step(np.array([0.1, 0.0]))
//         let position = state[0]
//         let velocity = state[1]
//         let angle = state[2]
//         let angular_velocity = state[3]
//         print(angle)
//     }
// }
// env.close()