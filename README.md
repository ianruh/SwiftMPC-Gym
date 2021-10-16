# SwiftMPC Gym

This repository contains one (at the moment) experiment/proof of concept project working with the [SwiftMPC](https://github.com/ianruh/SwiftMPC) package. The proof of concept project currently in this repository solves the cartpole problem using the SwiftMPC package for control, and [a fork of OpenAI Gym](https://github.com/ianruh/gym) for the visualization.

## Cartpole Proof of Concept

As a proof of concept for SwiftMPC, and to make sure everything is usable end to end, the cartpole problem is modeled and solved. The folowing video shows it's ability to perform a swing-up reliably and maintain balance.

https://user-images.githubusercontent.com/7023667/136674220-1473c977-d8d5-46bf-99ab-5203ffde77b1.mov

The above simulation was run with a 20 step time horizon, which spanned 4 seconds, resulting in a computation time of 2-5ms per step. The variation between runs is due to the initial position being randomly set around negative pi.

The most ineteresting file in here, where the objective function for the MPC model is defined, is [here](https://github.com/ianruh/SwiftMPC-Gym/blob/main/Sources/CartPole/CartPoleSymbolicObjective.swift). The code has been commented to be reasonably clear. Refer to the documentation for the SwiftMPC package for additional information on how the opbjective is defined and the solver's parameters.
