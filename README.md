# SwiftMPC Gym

This repository contains one (at the moment) experiment/proof of concept project working with the [SwiftMPC](https://github.com/ianruh/SwiftMPC) package. The proof of concept project currently in this repository solves the cartpole problem using the SwiftMPC package for control, and a fork of OpenAI Gym for the visualization.



The most ineteresting file in here, where the objective function for the MPC model is defined, is [here](https://github.com/ianruh/SwiftMPC-Gym/blob/main/Sources/CartPole/CartPoleSymbolicObjective.swift). The code has been commented to be reasonably clear. Refer to the documentation for the SwiftMPC package for additional information on how the opbjective is defined and the solver's parameters.
