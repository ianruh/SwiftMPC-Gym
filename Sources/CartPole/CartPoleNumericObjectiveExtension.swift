#if !NO_NUMERIC_OBJECTIVE
import LASwift
import RealModule
import SwiftMPC


extension CartPoleNumericObjective: Objective {

var numVariables: Int { return 100 }
var numConstraints: Int { return 80 }

//=================== Extractors ===================

@inlinable
static func extractVector_velocity(_ x: Vector) -> Vector {
var flat: Vector = zeros(20)
flat.withUnsafeMutableBufferPointer({ buffer in
buffer[0] = x[1]
buffer[1] = x[6]
buffer[2] = x[11]
buffer[3] = x[16]
buffer[4] = x[21]
buffer[5] = x[26]
buffer[6] = x[31]
buffer[7] = x[36]
buffer[8] = x[41]
buffer[9] = x[46]
buffer[10] = x[51]
buffer[11] = x[56]
buffer[12] = x[61]
buffer[13] = x[66]
buffer[14] = x[71]
buffer[15] = x[76]
buffer[16] = x[81]
buffer[17] = x[86]
buffer[18] = x[91]
buffer[19] = x[96]
})
return flat
}

@inlinable
static func extractVector_angularVelocity(_ x: Vector) -> Vector {
var flat: Vector = zeros(20)
flat.withUnsafeMutableBufferPointer({ buffer in
buffer[0] = x[3]
buffer[1] = x[8]
buffer[2] = x[13]
buffer[3] = x[18]
buffer[4] = x[23]
buffer[5] = x[28]
buffer[6] = x[33]
buffer[7] = x[38]
buffer[8] = x[43]
buffer[9] = x[48]
buffer[10] = x[53]
buffer[11] = x[58]
buffer[12] = x[63]
buffer[13] = x[68]
buffer[14] = x[73]
buffer[15] = x[78]
buffer[16] = x[83]
buffer[17] = x[88]
buffer[18] = x[93]
buffer[19] = x[98]
})
return flat
}

@inlinable
static func extractVector_position(_ x: Vector) -> Vector {
var flat: Vector = zeros(20)
flat.withUnsafeMutableBufferPointer({ buffer in
buffer[0] = x[0]
buffer[1] = x[5]
buffer[2] = x[10]
buffer[3] = x[15]
buffer[4] = x[20]
buffer[5] = x[25]
buffer[6] = x[30]
buffer[7] = x[35]
buffer[8] = x[40]
buffer[9] = x[45]
buffer[10] = x[50]
buffer[11] = x[55]
buffer[12] = x[60]
buffer[13] = x[65]
buffer[14] = x[70]
buffer[15] = x[75]
buffer[16] = x[80]
buffer[17] = x[85]
buffer[18] = x[90]
buffer[19] = x[95]
})
return flat
}

@inlinable
static func extractVector_angle(_ x: Vector) -> Vector {
var flat: Vector = zeros(20)
flat.withUnsafeMutableBufferPointer({ buffer in
buffer[0] = x[2]
buffer[1] = x[7]
buffer[2] = x[12]
buffer[3] = x[17]
buffer[4] = x[22]
buffer[5] = x[27]
buffer[6] = x[32]
buffer[7] = x[37]
buffer[8] = x[42]
buffer[9] = x[47]
buffer[10] = x[52]
buffer[11] = x[57]
buffer[12] = x[62]
buffer[13] = x[67]
buffer[14] = x[72]
buffer[15] = x[77]
buffer[16] = x[82]
buffer[17] = x[87]
buffer[18] = x[92]
buffer[19] = x[97]
})
return flat
}

@inlinable
static func extractVector_force(_ x: Vector) -> Vector {
var flat: Vector = zeros(20)
flat.withUnsafeMutableBufferPointer({ buffer in
buffer[0] = x[4]
buffer[1] = x[9]
buffer[2] = x[14]
buffer[3] = x[19]
buffer[4] = x[24]
buffer[5] = x[29]
buffer[6] = x[34]
buffer[7] = x[39]
buffer[8] = x[44]
buffer[9] = x[49]
buffer[10] = x[54]
buffer[11] = x[59]
buffer[12] = x[64]
buffer[13] = x[69]
buffer[14] = x[74]
buffer[15] = x[79]
buffer[16] = x[84]
buffer[17] = x[89]
buffer[18] = x[94]
buffer[19] = x[99]
})
return flat
}
//=================== Primal Constructor ===================
@inlinable
static func constructPrimal(angle: Vector, angularVelocity: Vector, force: Vector, position: Vector, velocity: Vector) -> Vector {
var flat: Vector = zeros(100)
flat.withUnsafeMutableBufferPointer({ buffer in
buffer[0] = position[0]
buffer[1] = velocity[0]
buffer[2] = angle[0]
buffer[3] = angularVelocity[0]
buffer[4] = force[0]
buffer[5] = position[1]
buffer[6] = velocity[1]
buffer[7] = angle[1]
buffer[8] = angularVelocity[1]
buffer[9] = force[1]
buffer[10] = position[2]
buffer[11] = velocity[2]
buffer[12] = angle[2]
buffer[13] = angularVelocity[2]
buffer[14] = force[2]
buffer[15] = position[3]
buffer[16] = velocity[3]
buffer[17] = angle[3]
buffer[18] = angularVelocity[3]
buffer[19] = force[3]
buffer[20] = position[4]
buffer[21] = velocity[4]
buffer[22] = angle[4]
buffer[23] = angularVelocity[4]
buffer[24] = force[4]
buffer[25] = position[5]
buffer[26] = velocity[5]
buffer[27] = angle[5]
buffer[28] = angularVelocity[5]
buffer[29] = force[5]
buffer[30] = position[6]
buffer[31] = velocity[6]
buffer[32] = angle[6]
buffer[33] = angularVelocity[6]
buffer[34] = force[6]
buffer[35] = position[7]
buffer[36] = velocity[7]
buffer[37] = angle[7]
buffer[38] = angularVelocity[7]
buffer[39] = force[7]
buffer[40] = position[8]
buffer[41] = velocity[8]
buffer[42] = angle[8]
buffer[43] = angularVelocity[8]
buffer[44] = force[8]
buffer[45] = position[9]
buffer[46] = velocity[9]
buffer[47] = angle[9]
buffer[48] = angularVelocity[9]
buffer[49] = force[9]
buffer[50] = position[10]
buffer[51] = velocity[10]
buffer[52] = angle[10]
buffer[53] = angularVelocity[10]
buffer[54] = force[10]
buffer[55] = position[11]
buffer[56] = velocity[11]
buffer[57] = angle[11]
buffer[58] = angularVelocity[11]
buffer[59] = force[11]
buffer[60] = position[12]
buffer[61] = velocity[12]
buffer[62] = angle[12]
buffer[63] = angularVelocity[12]
buffer[64] = force[12]
buffer[65] = position[13]
buffer[66] = velocity[13]
buffer[67] = angle[13]
buffer[68] = angularVelocity[13]
buffer[69] = force[13]
buffer[70] = position[14]
buffer[71] = velocity[14]
buffer[72] = angle[14]
buffer[73] = angularVelocity[14]
buffer[74] = force[14]
buffer[75] = position[15]
buffer[76] = velocity[15]
buffer[77] = angle[15]
buffer[78] = angularVelocity[15]
buffer[79] = force[15]
buffer[80] = position[16]
buffer[81] = velocity[16]
buffer[82] = angle[16]
buffer[83] = angularVelocity[16]
buffer[84] = force[16]
buffer[85] = position[17]
buffer[86] = velocity[17]
buffer[87] = angle[17]
buffer[88] = angularVelocity[17]
buffer[89] = force[17]
buffer[90] = position[18]
buffer[91] = velocity[18]
buffer[92] = angle[18]
buffer[93] = angularVelocity[18]
buffer[94] = force[18]
buffer[95] = position[19]
buffer[96] = velocity[19]
buffer[97] = angle[19]
buffer[98] = angularVelocity[19]
buffer[99] = force[19]
})
return flat
}

//=================== Objective Value ===================
@inlinable
func value(_ x: Vector) -> Double {
return Double.cos(x[47]) * -1.0 + Double.pow(x[0], 2) * 0.05 + Double.cos(x[12]) * -1.0 + Double.cos(x[7]) * -1.0 + Double.pow(x[33], 2) * 0.05 + Double.pow(x[8], 2) * 0.05 + Double.pow(x[93], 2) * 0.05 + Double.cos(x[67]) * -1.0 + Double.cos(x[22]) * -1.0 + Double.pow(x[21], 2) * 0.05 + Double.pow(x[68], 2) * 0.05 + Double.pow(x[96], 2) * 0.05 + Double.pow(x[16], 2) * 0.05 + Double.pow(x[83], 2) * 0.05 + Double.cos(x[52]) * -1.0 + Double.pow(x[28], 2) * 0.05 + Double.pow(x[61], 2) * 0.05 + Double.pow(x[25], 2) * 0.05 + Double.pow(x[56], 2) * 0.05 + Double.pow(x[3], 2) * 0.05 + Double.pow(x[53], 2) * 0.05 + Double.cos(x[82]) * -1.0 + Double.pow(x[78], 2) * 0.05 + Double.cos(x[62]) * -1.0 + Double.pow(x[88], 2) * 0.05 + Double.pow(x[31], 2) * 0.05 + Double.pow(x[60], 2) * 0.05 + Double.cos(x[42]) * -1.0 + Double.pow(x[50], 2) * 0.05 + Double.pow(x[1], 2) * 0.05 + Double.pow(x[38], 2) * 0.05 + Double.cos(x[92]) * -1.0 + Double.pow(x[73], 2) * 0.05 + Double.pow(x[26], 2) * 0.05 + Double.pow(x[86], 2) * 0.05 + Double.cos(x[32]) * -1.0 + Double.pow(x[70], 2) * 0.05 + Double.pow(x[81], 2) * 0.05 + Double.cos(x[37]) * -1.0 + Double.pow(x[43], 2) * 0.05 + Double.pow(x[30], 2) * 0.05 + Double.cos(x[27]) * -1.0 + Double.cos(x[77]) * -1.0 + Double.pow(x[76], 2) * 0.05 + Double.pow(x[15], 2) * 0.05 + Double.cos(x[97]) * -1.0 + Double.pow(x[80], 2) * 0.05 + Double.pow(x[40], 2) * 0.05 + Double.pow(x[46], 2) * 0.05 + Double.cos(x[87]) * -1.0 + Double.pow(x[6], 2) * 0.05 + Double.pow(x[23], 2) * 0.05 + Double.pow(x[58], 2) * 0.05 + Double.pow(x[65], 2) * 0.05 + Double.pow(x[11], 2) * 0.05 + Double.pow(x[90], 2) * 0.05 + Double.cos(x[57]) * -1.0 + Double.pow(x[75], 2) * 0.05 + Double.pow(x[5], 2) * 0.05 + Double.pow(x[95], 2) * 0.05 + Double.pow(x[13], 2) * 0.05 + Double.pow(x[55], 2) * 0.05 + Double.pow(x[98], 2) * 0.05 + Double.pow(x[41], 2) * 0.05 + Double.cos(x[2]) * -1.0 + Double.cos(x[17]) * -1.0 + Double.pow(x[85], 2) * 0.05 + Double.pow(x[71], 2) * 0.05 + Double.pow(x[48], 2) * 0.05 + Double.pow(x[51], 2) * 0.05 + Double.pow(x[45], 2) * 0.05 + Double.pow(x[91], 2) * 0.05 + Double.pow(x[35], 2) * 0.05 + Double.pow(x[66], 2) * 0.05 + Double.pow(x[36], 2) * 0.05 + Double.pow(x[10], 2) * 0.05 + Double.pow(x[20], 2) * 0.05 + Double.pow(x[18], 2) * 0.05 + Double.pow(x[63], 2) * 0.05 + Double.cos(x[72]) * -1.0
}

//=================== Gradient Value ===================
@inlinable
func gradient(_ x: Vector) -> Vector {
var flat: Vector = zeros(100)
flat.withUnsafeMutableBufferPointer({ buffer in
buffer[0] = x[0] * 0.1
buffer[1] = x[1] * 0.1
buffer[2] = Double.sin(x[2])
buffer[3] = x[3] * 0.1
buffer[5] = x[5] * 0.1
buffer[6] = x[6] * 0.1
buffer[7] = Double.sin(x[7])
buffer[8] = x[8] * 0.1
buffer[10] = x[10] * 0.1
buffer[11] = x[11] * 0.1
buffer[12] = Double.sin(x[12])
buffer[13] = x[13] * 0.1
buffer[15] = x[15] * 0.1
buffer[16] = x[16] * 0.1
buffer[17] = Double.sin(x[17])
buffer[18] = x[18] * 0.1
buffer[20] = x[20] * 0.1
buffer[21] = x[21] * 0.1
buffer[22] = Double.sin(x[22])
buffer[23] = x[23] * 0.1
buffer[25] = x[25] * 0.1
buffer[26] = x[26] * 0.1
buffer[27] = Double.sin(x[27])
buffer[28] = x[28] * 0.1
buffer[30] = x[30] * 0.1
buffer[31] = x[31] * 0.1
buffer[32] = Double.sin(x[32])
buffer[33] = x[33] * 0.1
buffer[35] = x[35] * 0.1
buffer[36] = x[36] * 0.1
buffer[37] = Double.sin(x[37])
buffer[38] = x[38] * 0.1
buffer[40] = x[40] * 0.1
buffer[41] = x[41] * 0.1
buffer[42] = Double.sin(x[42])
buffer[43] = x[43] * 0.1
buffer[45] = x[45] * 0.1
buffer[46] = x[46] * 0.1
buffer[47] = Double.sin(x[47])
buffer[48] = x[48] * 0.1
buffer[50] = x[50] * 0.1
buffer[51] = x[51] * 0.1
buffer[52] = Double.sin(x[52])
buffer[53] = x[53] * 0.1
buffer[55] = x[55] * 0.1
buffer[56] = x[56] * 0.1
buffer[57] = Double.sin(x[57])
buffer[58] = x[58] * 0.1
buffer[60] = x[60] * 0.1
buffer[61] = x[61] * 0.1
buffer[62] = Double.sin(x[62])
buffer[63] = x[63] * 0.1
buffer[65] = x[65] * 0.1
buffer[66] = x[66] * 0.1
buffer[67] = Double.sin(x[67])
buffer[68] = x[68] * 0.1
buffer[70] = x[70] * 0.1
buffer[71] = x[71] * 0.1
buffer[72] = Double.sin(x[72])
buffer[73] = x[73] * 0.1
buffer[75] = x[75] * 0.1
buffer[76] = x[76] * 0.1
buffer[77] = Double.sin(x[77])
buffer[78] = x[78] * 0.1
buffer[80] = x[80] * 0.1
buffer[81] = x[81] * 0.1
buffer[82] = Double.sin(x[82])
buffer[83] = x[83] * 0.1
buffer[85] = x[85] * 0.1
buffer[86] = x[86] * 0.1
buffer[87] = Double.sin(x[87])
buffer[88] = x[88] * 0.1
buffer[90] = x[90] * 0.1
buffer[91] = x[91] * 0.1
buffer[92] = Double.sin(x[92])
buffer[93] = x[93] * 0.1
buffer[95] = x[95] * 0.1
buffer[96] = x[96] * 0.1
buffer[97] = Double.sin(x[97])
buffer[98] = x[98] * 0.1
})
return flat
}

//=================== Hessian Value ===================
@inlinable
func hessian(_ x: Vector) -> Matrix {
var flat: Vector = zeros(10000)
flat.withUnsafeMutableBufferPointer({ buffer in
buffer[0] = 0.1
buffer[101] = 0.1
buffer[202] = Double.cos(x[2])
buffer[303] = 0.1
buffer[505] = 0.1
buffer[606] = 0.1
buffer[707] = Double.cos(x[7])
buffer[808] = 0.1
buffer[1010] = 0.1
buffer[1111] = 0.1
buffer[1212] = Double.cos(x[12])
buffer[1313] = 0.1
buffer[1515] = 0.1
buffer[1616] = 0.1
buffer[1717] = Double.cos(x[17])
buffer[1818] = 0.1
buffer[2020] = 0.1
buffer[2121] = 0.1
buffer[2222] = Double.cos(x[22])
buffer[2323] = 0.1
buffer[2525] = 0.1
buffer[2626] = 0.1
buffer[2727] = Double.cos(x[27])
buffer[2828] = 0.1
buffer[3030] = 0.1
buffer[3131] = 0.1
buffer[3232] = Double.cos(x[32])
buffer[3333] = 0.1
buffer[3535] = 0.1
buffer[3636] = 0.1
buffer[3737] = Double.cos(x[37])
buffer[3838] = 0.1
buffer[4040] = 0.1
buffer[4141] = 0.1
buffer[4242] = Double.cos(x[42])
buffer[4343] = 0.1
buffer[4545] = 0.1
buffer[4646] = 0.1
buffer[4747] = Double.cos(x[47])
buffer[4848] = 0.1
buffer[5050] = 0.1
buffer[5151] = 0.1
buffer[5252] = Double.cos(x[52])
buffer[5353] = 0.1
buffer[5555] = 0.1
buffer[5656] = 0.1
buffer[5757] = Double.cos(x[57])
buffer[5858] = 0.1
buffer[6060] = 0.1
buffer[6161] = 0.1
buffer[6262] = Double.cos(x[62])
buffer[6363] = 0.1
buffer[6565] = 0.1
buffer[6666] = 0.1
buffer[6767] = Double.cos(x[67])
buffer[6868] = 0.1
buffer[7070] = 0.1
buffer[7171] = 0.1
buffer[7272] = Double.cos(x[72])
buffer[7373] = 0.1
buffer[7575] = 0.1
buffer[7676] = 0.1
buffer[7777] = Double.cos(x[77])
buffer[7878] = 0.1
buffer[8080] = 0.1
buffer[8181] = 0.1
buffer[8282] = Double.cos(x[82])
buffer[8383] = 0.1
buffer[8585] = 0.1
buffer[8686] = 0.1
buffer[8787] = Double.cos(x[87])
buffer[8888] = 0.1
buffer[9090] = 0.1
buffer[9191] = 0.1
buffer[9292] = Double.cos(x[92])
buffer[9393] = 0.1
buffer[9595] = 0.1
buffer[9696] = 0.1
buffer[9797] = Double.cos(x[97])
buffer[9898] = 0.1
})
return Matrix(100, 100, flat)
}

//=================== Equality Matrix Constraint ===================
var equalityConstraintMatrix: Matrix? {
var flat: Vector = zeros(8000)
flat.withUnsafeMutableBufferPointer({ buffer in
buffer[0] = 1.0
buffer[101] = 1.0
buffer[202] = 1.0
buffer[303] = 1.0
buffer[400] = -1.0 * 1.0
buffer[401] = -1.0 * 0.05
buffer[405] = 1.0
buffer[406] = -1.0 * 0.05
buffer[501] = -1.0 * 1.0
buffer[502] = -1.0 * (((self.gravity * self.cartMass * Double.pow(Double.cos(self.previousAngle[1]), 2) * -0.13333333333333333) / self.poleMass + (self.gravity * self.cartMass * Double.pow(Double.sin(self.previousAngle[1]), 2) * 0.13333333333333333) / self.poleMass + self.gravity * Double.pow(Double.sin(self.previousAngle[1]), 2) * Double.pow(Double.cos(self.previousAngle[1]), 2) * -0.1 + self.gravity * Double.pow(Double.cos(self.previousAngle[1]), 4) * 0.1 + self.gravity * Double.pow(Double.sin(self.previousAngle[1]), 2) * 0.13333333333333333 + self.gravity * Double.pow(Double.cos(self.previousAngle[1]), 2) * -0.13333333333333333 + self.gravity * Double.pow(Double.sin(self.previousAngle[1]), 2) * Double.pow(Double.cos(self.previousAngle[1]), 2) * 0.2) / Double.pow((-1.3333333333333333 * self.cartMass) / self.poleMass + Double.pow(Double.cos(self.previousAngle[1]), 2) + -1.3333333333333333, 2))
buffer[503] = -1.0 * ((self.poleLength * Double.sin(self.previousAngle[1]) * -0.26666666666666666 * self.previousAngularVelocity[1]) / ((-1.3333333333333333 * self.cartMass) / self.poleMass + Double.pow(Double.cos(self.previousAngle[1]), 2) + -1.3333333333333333))
buffer[504] = -1.0 * (-0.13333333333333333 / (-1.3333333333333333 * self.cartMass + -1.3333333333333333 * self.poleMass + self.poleMass * Double.pow(Double.cos(self.previousAngle[1]), 2)))
buffer[506] = 1.0
buffer[602] = -1.0 * 1.0
buffer[603] = -1.0 * 0.05
buffer[607] = 1.0
buffer[608] = -1.0 * 0.05
buffer[702] = -1.0 * ((self.gravity * self.poleLength * Double.pow(self.poleMass, 2) * Double.pow(Double.cos(self.previousAngle[1]), 3) * -0.1 + Double.cos(self.previousAngle[1]) * self.gravity * self.poleLength * Double.pow(self.poleMass, 2) * Double.pow(Double.sin(self.previousAngle[1]), 2) * -0.2 + Double.cos(self.previousAngle[1]) * self.gravity * self.poleLength * Double.pow(self.poleMass, 2) * 0.13333333333333333 + Double.cos(self.previousAngle[1]) * 0.13333333333333333 * self.gravity * self.poleLength * self.cartMass * self.poleMass) / Double.pow(1.3333333333333333 * self.poleLength * self.cartMass + 1.3333333333333333 * self.poleLength * self.poleMass + self.poleLength * self.poleMass * Double.pow(Double.cos(self.previousAngle[1]), 2) * -1.0, 2)) + -1.0 * ((Double.cos(self.previousAngle[1]) * self.gravity * self.poleLength * self.cartMass * self.poleMass * Double.pow(Double.sin(self.previousAngle[1]), 2) * -0.2 + Double.cos(self.previousAngle[1]) * self.gravity * self.poleLength * Double.pow(self.cartMass, 2) * 0.13333333333333333 + self.gravity * self.poleLength * self.cartMass * self.poleMass * Double.pow(Double.cos(self.previousAngle[1]), 3) * -0.1 + Double.cos(self.previousAngle[1]) * 0.13333333333333333 * self.gravity * self.poleLength * self.cartMass * self.poleMass) / Double.pow(1.3333333333333333 * self.poleLength * self.cartMass + 1.3333333333333333 * self.poleLength * self.poleMass + self.poleLength * self.poleMass * Double.pow(Double.cos(self.previousAngle[1]), 2) * -1.0, 2))
buffer[703] = -1.0 * 1.0 + -1.0 * ((Double.sin(self.previousAngle[1]) * -0.2 * self.previousAngularVelocity[1]) / ((1.3333333333333333 * self.cartMass) / self.poleMass + Double.cos(self.previousAngle[1]) * -1.0 + 1.3333333333333333))
buffer[704] = -1.0 * (-0.1 / (1.3333333333333333 * self.poleLength * self.cartMass + 1.3333333333333333 * self.poleLength * self.poleMass + Double.cos(self.previousAngle[1]) * -1.0 * self.poleLength * self.poleMass))
buffer[708] = 1.0
buffer[805] = -1.0 * 1.0
buffer[806] = -1.0 * 0.05
buffer[810] = 1.0
buffer[811] = -1.0 * 0.05
buffer[906] = -1.0 * 1.0
buffer[907] = -1.0 * (((self.gravity * self.cartMass * Double.pow(Double.cos(self.previousAngle[2]), 2) * -0.13333333333333333) / self.poleMass + (self.gravity * self.cartMass * Double.pow(Double.sin(self.previousAngle[2]), 2) * 0.13333333333333333) / self.poleMass + self.gravity * Double.pow(Double.cos(self.previousAngle[2]), 2) * -0.13333333333333333 + self.gravity * Double.pow(Double.cos(self.previousAngle[2]), 2) * Double.pow(Double.sin(self.previousAngle[2]), 2) * 0.2 + self.gravity * Double.pow(Double.sin(self.previousAngle[2]), 2) * 0.13333333333333333 + self.gravity * Double.pow(Double.cos(self.previousAngle[2]), 2) * Double.pow(Double.sin(self.previousAngle[2]), 2) * -0.1 + self.gravity * Double.pow(Double.cos(self.previousAngle[2]), 4) * 0.1) / Double.pow((-1.3333333333333333 * self.cartMass) / self.poleMass + Double.pow(Double.cos(self.previousAngle[2]), 2) + -1.3333333333333333, 2))
buffer[908] = -1.0 * ((self.poleLength * Double.sin(self.previousAngle[2]) * -0.26666666666666666 * self.previousAngularVelocity[2]) / ((-1.3333333333333333 * self.cartMass) / self.poleMass + Double.pow(Double.cos(self.previousAngle[2]), 2) + -1.3333333333333333))
buffer[909] = -1.0 * (-0.13333333333333333 / (-1.3333333333333333 * self.cartMass + self.poleMass * Double.pow(Double.cos(self.previousAngle[2]), 2) + -1.3333333333333333 * self.poleMass))
buffer[911] = 1.0
buffer[1007] = -1.0 * 1.0
buffer[1008] = -1.0 * 0.05
buffer[1012] = 1.0
buffer[1013] = -1.0 * 0.05
buffer[1107] = -1.0 * ((Double.cos(self.previousAngle[2]) * self.gravity * self.poleLength * Double.pow(self.cartMass, 2) * 0.13333333333333333 + Double.cos(self.previousAngle[2]) * self.gravity * self.poleLength * self.cartMass * self.poleMass * Double.pow(Double.sin(self.previousAngle[2]), 2) * -0.2 + Double.cos(self.previousAngle[2]) * 0.13333333333333333 * self.gravity * self.poleLength * self.cartMass * self.poleMass + self.gravity * self.poleLength * self.cartMass * self.poleMass * Double.pow(Double.cos(self.previousAngle[2]), 3) * -0.1) / Double.pow(1.3333333333333333 * self.poleLength * self.cartMass + 1.3333333333333333 * self.poleLength * self.poleMass + self.poleLength * self.poleMass * Double.pow(Double.cos(self.previousAngle[2]), 2) * -1.0, 2)) + -1.0 * ((self.gravity * self.poleLength * Double.pow(self.poleMass, 2) * Double.pow(Double.cos(self.previousAngle[2]), 3) * -0.1 + Double.cos(self.previousAngle[2]) * self.gravity * self.poleLength * Double.pow(self.poleMass, 2) * Double.pow(Double.sin(self.previousAngle[2]), 2) * -0.2 + Double.cos(self.previousAngle[2]) * 0.13333333333333333 * self.gravity * self.poleLength * self.cartMass * self.poleMass + Double.cos(self.previousAngle[2]) * self.gravity * self.poleLength * Double.pow(self.poleMass, 2) * 0.13333333333333333) / Double.pow(1.3333333333333333 * self.poleLength * self.cartMass + 1.3333333333333333 * self.poleLength * self.poleMass + self.poleLength * self.poleMass * Double.pow(Double.cos(self.previousAngle[2]), 2) * -1.0, 2))
buffer[1108] = -1.0 * 1.0 + -1.0 * ((Double.sin(self.previousAngle[2]) * -0.2 * self.previousAngularVelocity[2]) / ((1.3333333333333333 * self.cartMass) / self.poleMass + Double.cos(self.previousAngle[2]) * -1.0 + 1.3333333333333333))
buffer[1109] = -1.0 * (-0.1 / (1.3333333333333333 * self.poleLength * self.cartMass + 1.3333333333333333 * self.poleLength * self.poleMass + Double.cos(self.previousAngle[2]) * -1.0 * self.poleLength * self.poleMass))
buffer[1113] = 1.0
buffer[1210] = -1.0 * 1.0
buffer[1211] = -1.0 * 0.05
buffer[1215] = 1.0
buffer[1216] = -1.0 * 0.05
buffer[1311] = -1.0 * 1.0
buffer[1312] = -1.0 * (((self.gravity * self.cartMass * Double.pow(Double.sin(self.previousAngle[3]), 2) * 0.13333333333333333) / self.poleMass + (self.gravity * self.cartMass * Double.pow(Double.cos(self.previousAngle[3]), 2) * -0.13333333333333333) / self.poleMass + self.gravity * Double.pow(Double.sin(self.previousAngle[3]), 2) * Double.pow(Double.cos(self.previousAngle[3]), 2) * 0.2 + self.gravity * Double.pow(Double.sin(self.previousAngle[3]), 2) * Double.pow(Double.cos(self.previousAngle[3]), 2) * -0.1 + self.gravity * Double.pow(Double.cos(self.previousAngle[3]), 4) * 0.1 + self.gravity * Double.pow(Double.cos(self.previousAngle[3]), 2) * -0.13333333333333333 + self.gravity * Double.pow(Double.sin(self.previousAngle[3]), 2) * 0.13333333333333333) / Double.pow((-1.3333333333333333 * self.cartMass) / self.poleMass + Double.pow(Double.cos(self.previousAngle[3]), 2) + -1.3333333333333333, 2))
buffer[1313] = -1.0 * ((self.poleLength * Double.sin(self.previousAngle[3]) * -0.26666666666666666 * self.previousAngularVelocity[3]) / ((-1.3333333333333333 * self.cartMass) / self.poleMass + Double.pow(Double.cos(self.previousAngle[3]), 2) + -1.3333333333333333))
buffer[1314] = -1.0 * (-0.13333333333333333 / (-1.3333333333333333 * self.cartMass + self.poleMass * Double.pow(Double.cos(self.previousAngle[3]), 2) + -1.3333333333333333 * self.poleMass))
buffer[1316] = 1.0
buffer[1412] = -1.0 * 1.0
buffer[1413] = -1.0 * 0.05
buffer[1417] = 1.0
buffer[1418] = -1.0 * 0.05
buffer[1512] = -1.0 * ((Double.cos(self.previousAngle[3]) * 0.13333333333333333 * self.gravity * self.poleLength * self.cartMass * self.poleMass + self.gravity * self.poleLength * self.cartMass * self.poleMass * Double.pow(Double.cos(self.previousAngle[3]), 3) * -0.1 + Double.cos(self.previousAngle[3]) * self.gravity * self.poleLength * Double.pow(self.cartMass, 2) * 0.13333333333333333 + Double.cos(self.previousAngle[3]) * self.gravity * self.poleLength * self.cartMass * self.poleMass * Double.pow(Double.sin(self.previousAngle[3]), 2) * -0.2) / Double.pow(1.3333333333333333 * self.poleLength * self.cartMass + 1.3333333333333333 * self.poleLength * self.poleMass + self.poleLength * self.poleMass * Double.pow(Double.cos(self.previousAngle[3]), 2) * -1.0, 2)) + -1.0 * ((Double.cos(self.previousAngle[3]) * self.gravity * self.poleLength * Double.pow(self.poleMass, 2) * Double.pow(Double.sin(self.previousAngle[3]), 2) * -0.2 + Double.cos(self.previousAngle[3]) * 0.13333333333333333 * self.gravity * self.poleLength * self.cartMass * self.poleMass + Double.cos(self.previousAngle[3]) * self.gravity * self.poleLength * Double.pow(self.poleMass, 2) * 0.13333333333333333 + self.gravity * self.poleLength * Double.pow(Double.cos(self.previousAngle[3]), 3) * Double.pow(self.poleMass, 2) * -0.1) / Double.pow(1.3333333333333333 * self.poleLength * self.cartMass + 1.3333333333333333 * self.poleLength * self.poleMass + self.poleLength * self.poleMass * Double.pow(Double.cos(self.previousAngle[3]), 2) * -1.0, 2))
buffer[1513] = -1.0 * 1.0 + -1.0 * ((Double.sin(self.previousAngle[3]) * -0.2 * self.previousAngularVelocity[3]) / ((1.3333333333333333 * self.cartMass) / self.poleMass + Double.cos(self.previousAngle[3]) * -1.0 + 1.3333333333333333))
buffer[1514] = -1.0 * (-0.1 / (Double.cos(self.previousAngle[3]) * -1.0 * self.poleLength * self.poleMass + 1.3333333333333333 * self.poleLength * self.cartMass + 1.3333333333333333 * self.poleLength * self.poleMass))
buffer[1518] = 1.0
buffer[1615] = -1.0 * 1.0
buffer[1616] = -1.0 * 0.05
buffer[1620] = 1.0
buffer[1621] = -1.0 * 0.05
buffer[1716] = -1.0 * 1.0
buffer[1717] = -1.0 * (((self.gravity * self.cartMass * Double.pow(Double.sin(self.previousAngle[4]), 2) * 0.13333333333333333) / self.poleMass + (self.gravity * self.cartMass * Double.pow(Double.cos(self.previousAngle[4]), 2) * -0.13333333333333333) / self.poleMass + self.gravity * Double.pow(Double.sin(self.previousAngle[4]), 2) * Double.pow(Double.cos(self.previousAngle[4]), 2) * 0.2 + self.gravity * Double.pow(Double.sin(self.previousAngle[4]), 2) * Double.pow(Double.cos(self.previousAngle[4]), 2) * -0.1 + self.gravity * Double.pow(Double.cos(self.previousAngle[4]), 4) * 0.1 + self.gravity * Double.pow(Double.cos(self.previousAngle[4]), 2) * -0.13333333333333333 + self.gravity * Double.pow(Double.sin(self.previousAngle[4]), 2) * 0.13333333333333333) / Double.pow((-1.3333333333333333 * self.cartMass) / self.poleMass + Double.pow(Double.cos(self.previousAngle[4]), 2) + -1.3333333333333333, 2))
buffer[1718] = -1.0 * ((self.poleLength * Double.sin(self.previousAngle[4]) * -0.26666666666666666 * self.previousAngularVelocity[4]) / ((-1.3333333333333333 * self.cartMass) / self.poleMass + Double.pow(Double.cos(self.previousAngle[4]), 2) + -1.3333333333333333))
buffer[1719] = -1.0 * (-0.13333333333333333 / (-1.3333333333333333 * self.cartMass + self.poleMass * Double.pow(Double.cos(self.previousAngle[4]), 2) + -1.3333333333333333 * self.poleMass))
buffer[1721] = 1.0
buffer[1817] = -1.0 * 1.0
buffer[1818] = -1.0 * 0.05
buffer[1822] = 1.0
buffer[1823] = -1.0 * 0.05
buffer[1917] = -1.0 * ((self.gravity * self.poleLength * Double.pow(self.poleMass, 2) * Double.pow(Double.cos(self.previousAngle[4]), 3) * -0.1 + Double.cos(self.previousAngle[4]) * self.gravity * self.poleLength * Double.pow(self.poleMass, 2) * 0.13333333333333333 + Double.cos(self.previousAngle[4]) * self.gravity * self.poleLength * Double.pow(self.poleMass, 2) * Double.pow(Double.sin(self.previousAngle[4]), 2) * -0.2 + Double.cos(self.previousAngle[4]) * 0.13333333333333333 * self.gravity * self.poleLength * self.cartMass * self.poleMass) / Double.pow(1.3333333333333333 * self.poleLength * self.cartMass + 1.3333333333333333 * self.poleLength * self.poleMass + self.poleLength * self.poleMass * Double.pow(Double.cos(self.previousAngle[4]), 2) * -1.0, 2)) + -1.0 * ((Double.cos(self.previousAngle[4]) * self.gravity * self.poleLength * self.cartMass * self.poleMass * Double.pow(Double.sin(self.previousAngle[4]), 2) * -0.2 + self.gravity * self.poleLength * self.cartMass * self.poleMass * Double.pow(Double.cos(self.previousAngle[4]), 3) * -0.1 + Double.cos(self.previousAngle[4]) * self.gravity * self.poleLength * Double.pow(self.cartMass, 2) * 0.13333333333333333 + Double.cos(self.previousAngle[4]) * 0.13333333333333333 * self.gravity * self.poleLength * self.cartMass * self.poleMass) / Double.pow(1.3333333333333333 * self.poleLength * self.cartMass + 1.3333333333333333 * self.poleLength * self.poleMass + self.poleLength * self.poleMass * Double.pow(Double.cos(self.previousAngle[4]), 2) * -1.0, 2))
buffer[1918] = -1.0 * ((Double.sin(self.previousAngle[4]) * -0.2 * self.previousAngularVelocity[4]) / ((1.3333333333333333 * self.cartMass) / self.poleMass + Double.cos(self.previousAngle[4]) * -1.0 + 1.3333333333333333)) + -1.0 * 1.0
buffer[1919] = -1.0 * (-0.1 / (1.3333333333333333 * self.poleLength * self.cartMass + 1.3333333333333333 * self.poleLength * self.poleMass + Double.cos(self.previousAngle[4]) * -1.0 * self.poleLength * self.poleMass))
buffer[1923] = 1.0
buffer[2020] = -1.0 * 1.0
buffer[2021] = -1.0 * 0.05
buffer[2025] = 1.0
buffer[2026] = -1.0 * 0.05
buffer[2121] = -1.0 * 1.0
buffer[2122] = -1.0 * (((self.gravity * self.cartMass * Double.pow(Double.cos(self.previousAngle[5]), 2) * -0.13333333333333333) / self.poleMass + (self.gravity * self.cartMass * Double.pow(Double.sin(self.previousAngle[5]), 2) * 0.13333333333333333) / self.poleMass + self.gravity * Double.pow(Double.cos(self.previousAngle[5]), 2) * Double.pow(Double.sin(self.previousAngle[5]), 2) * 0.2 + self.gravity * Double.pow(Double.cos(self.previousAngle[5]), 2) * Double.pow(Double.sin(self.previousAngle[5]), 2) * -0.1 + self.gravity * Double.pow(Double.sin(self.previousAngle[5]), 2) * 0.13333333333333333 + self.gravity * Double.pow(Double.cos(self.previousAngle[5]), 2) * -0.13333333333333333 + self.gravity * Double.pow(Double.cos(self.previousAngle[5]), 4) * 0.1) / Double.pow((-1.3333333333333333 * self.cartMass) / self.poleMass + Double.pow(Double.cos(self.previousAngle[5]), 2) + -1.3333333333333333, 2))
buffer[2123] = -1.0 * ((self.poleLength * Double.sin(self.previousAngle[5]) * -0.26666666666666666 * self.previousAngularVelocity[5]) / ((-1.3333333333333333 * self.cartMass) / self.poleMass + Double.pow(Double.cos(self.previousAngle[5]), 2) + -1.3333333333333333))
buffer[2124] = -1.0 * (-0.13333333333333333 / (self.poleMass * Double.pow(Double.cos(self.previousAngle[5]), 2) + -1.3333333333333333 * self.cartMass + -1.3333333333333333 * self.poleMass))
buffer[2126] = 1.0
buffer[2222] = -1.0 * 1.0
buffer[2223] = -1.0 * 0.05
buffer[2227] = 1.0
buffer[2228] = -1.0 * 0.05
buffer[2322] = -1.0 * ((self.gravity * self.poleLength * Double.pow(Double.cos(self.previousAngle[5]), 3) * Double.pow(self.poleMass, 2) * -0.1 + Double.cos(self.previousAngle[5]) * self.gravity * self.poleLength * Double.pow(self.poleMass, 2) * Double.pow(Double.sin(self.previousAngle[5]), 2) * -0.2 + Double.cos(self.previousAngle[5]) * self.gravity * self.poleLength * Double.pow(self.poleMass, 2) * 0.13333333333333333 + Double.cos(self.previousAngle[5]) * 0.13333333333333333 * self.gravity * self.poleLength * self.cartMass * self.poleMass) / Double.pow(1.3333333333333333 * self.poleLength * self.cartMass + 1.3333333333333333 * self.poleLength * self.poleMass + self.poleLength * self.poleMass * Double.pow(Double.cos(self.previousAngle[5]), 2) * -1.0, 2)) + -1.0 * ((Double.cos(self.previousAngle[5]) * self.gravity * self.poleLength * Double.pow(self.cartMass, 2) * 0.13333333333333333 + Double.cos(self.previousAngle[5]) * self.gravity * self.poleLength * self.cartMass * self.poleMass * Double.pow(Double.sin(self.previousAngle[5]), 2) * -0.2 + self.gravity * self.poleLength * self.cartMass * self.poleMass * Double.pow(Double.cos(self.previousAngle[5]), 3) * -0.1 + Double.cos(self.previousAngle[5]) * 0.13333333333333333 * self.gravity * self.poleLength * self.cartMass * self.poleMass) / Double.pow(1.3333333333333333 * self.poleLength * self.cartMass + 1.3333333333333333 * self.poleLength * self.poleMass + self.poleLength * self.poleMass * Double.pow(Double.cos(self.previousAngle[5]), 2) * -1.0, 2))
buffer[2323] = -1.0 * 1.0 + -1.0 * ((Double.sin(self.previousAngle[5]) * -0.2 * self.previousAngularVelocity[5]) / ((1.3333333333333333 * self.cartMass) / self.poleMass + Double.cos(self.previousAngle[5]) * -1.0 + 1.3333333333333333))
buffer[2324] = -1.0 * (-0.1 / (1.3333333333333333 * self.poleLength * self.cartMass + 1.3333333333333333 * self.poleLength * self.poleMass + Double.cos(self.previousAngle[5]) * -1.0 * self.poleLength * self.poleMass))
buffer[2328] = 1.0
buffer[2425] = -1.0 * 1.0
buffer[2426] = -1.0 * 0.05
buffer[2430] = 1.0
buffer[2431] = -1.0 * 0.05
buffer[2526] = -1.0 * 1.0
buffer[2527] = -1.0 * (((self.gravity * self.cartMass * Double.pow(Double.cos(self.previousAngle[6]), 2) * -0.13333333333333333) / self.poleMass + (self.gravity * self.cartMass * Double.pow(Double.sin(self.previousAngle[6]), 2) * 0.13333333333333333) / self.poleMass + self.gravity * Double.pow(Double.cos(self.previousAngle[6]), 4) * 0.1 + self.gravity * Double.pow(Double.sin(self.previousAngle[6]), 2) * 0.13333333333333333 + self.gravity * Double.pow(Double.sin(self.previousAngle[6]), 2) * Double.pow(Double.cos(self.previousAngle[6]), 2) * 0.2 + self.gravity * Double.pow(Double.sin(self.previousAngle[6]), 2) * Double.pow(Double.cos(self.previousAngle[6]), 2) * -0.1 + self.gravity * Double.pow(Double.cos(self.previousAngle[6]), 2) * -0.13333333333333333) / Double.pow((-1.3333333333333333 * self.cartMass) / self.poleMass + Double.pow(Double.cos(self.previousAngle[6]), 2) + -1.3333333333333333, 2))
buffer[2528] = -1.0 * ((self.poleLength * Double.sin(self.previousAngle[6]) * -0.26666666666666666 * self.previousAngularVelocity[6]) / ((-1.3333333333333333 * self.cartMass) / self.poleMass + Double.pow(Double.cos(self.previousAngle[6]), 2) + -1.3333333333333333))
buffer[2529] = -1.0 * (-0.13333333333333333 / (-1.3333333333333333 * self.cartMass + self.poleMass * Double.pow(Double.cos(self.previousAngle[6]), 2) + -1.3333333333333333 * self.poleMass))
buffer[2531] = 1.0
buffer[2627] = -1.0 * 1.0
buffer[2628] = -1.0 * 0.05
buffer[2632] = 1.0
buffer[2633] = -1.0 * 0.05
buffer[2727] = -1.0 * ((self.gravity * self.poleLength * self.cartMass * self.poleMass * Double.pow(Double.cos(self.previousAngle[6]), 3) * -0.1 + Double.cos(self.previousAngle[6]) * self.gravity * self.poleLength * Double.pow(self.cartMass, 2) * 0.13333333333333333 + Double.cos(self.previousAngle[6]) * 0.13333333333333333 * self.gravity * self.poleLength * self.cartMass * self.poleMass + Double.cos(self.previousAngle[6]) * self.gravity * self.poleLength * self.cartMass * self.poleMass * Double.pow(Double.sin(self.previousAngle[6]), 2) * -0.2) / Double.pow(1.3333333333333333 * self.poleLength * self.cartMass + 1.3333333333333333 * self.poleLength * self.poleMass + self.poleLength * self.poleMass * Double.pow(Double.cos(self.previousAngle[6]), 2) * -1.0, 2)) + -1.0 * ((Double.cos(self.previousAngle[6]) * self.gravity * self.poleLength * Double.pow(self.poleMass, 2) * 0.13333333333333333 + self.gravity * self.poleLength * Double.pow(self.poleMass, 2) * Double.pow(Double.cos(self.previousAngle[6]), 3) * -0.1 + Double.cos(self.previousAngle[6]) * self.gravity * self.poleLength * Double.pow(Double.sin(self.previousAngle[6]), 2) * Double.pow(self.poleMass, 2) * -0.2 + Double.cos(self.previousAngle[6]) * 0.13333333333333333 * self.gravity * self.poleLength * self.cartMass * self.poleMass) / Double.pow(1.3333333333333333 * self.poleLength * self.cartMass + 1.3333333333333333 * self.poleLength * self.poleMass + self.poleLength * self.poleMass * Double.pow(Double.cos(self.previousAngle[6]), 2) * -1.0, 2))
buffer[2728] = -1.0 * 1.0 + -1.0 * ((Double.sin(self.previousAngle[6]) * -0.2 * self.previousAngularVelocity[6]) / ((1.3333333333333333 * self.cartMass) / self.poleMass + Double.cos(self.previousAngle[6]) * -1.0 + 1.3333333333333333))
buffer[2729] = -1.0 * (-0.1 / (1.3333333333333333 * self.poleLength * self.cartMass + 1.3333333333333333 * self.poleLength * self.poleMass + Double.cos(self.previousAngle[6]) * -1.0 * self.poleLength * self.poleMass))
buffer[2733] = 1.0
buffer[2830] = -1.0 * 1.0
buffer[2831] = -1.0 * 0.05
buffer[2835] = 1.0
buffer[2836] = -1.0 * 0.05
buffer[2931] = -1.0 * 1.0
buffer[2932] = -1.0 * (((self.gravity * self.cartMass * Double.pow(Double.cos(self.previousAngle[7]), 2) * -0.13333333333333333) / self.poleMass + (self.gravity * self.cartMass * Double.pow(Double.sin(self.previousAngle[7]), 2) * 0.13333333333333333) / self.poleMass + self.gravity * Double.pow(Double.cos(self.previousAngle[7]), 2) * -0.13333333333333333 + self.gravity * Double.pow(Double.cos(self.previousAngle[7]), 2) * Double.pow(Double.sin(self.previousAngle[7]), 2) * 0.2 + self.gravity * Double.pow(Double.cos(self.previousAngle[7]), 4) * 0.1 + self.gravity * Double.pow(Double.cos(self.previousAngle[7]), 2) * Double.pow(Double.sin(self.previousAngle[7]), 2) * -0.1 + self.gravity * Double.pow(Double.sin(self.previousAngle[7]), 2) * 0.13333333333333333) / Double.pow((-1.3333333333333333 * self.cartMass) / self.poleMass + Double.pow(Double.cos(self.previousAngle[7]), 2) + -1.3333333333333333, 2))
buffer[2933] = -1.0 * ((self.poleLength * Double.sin(self.previousAngle[7]) * -0.26666666666666666 * self.previousAngularVelocity[7]) / ((-1.3333333333333333 * self.cartMass) / self.poleMass + Double.pow(Double.cos(self.previousAngle[7]), 2) + -1.3333333333333333))
buffer[2934] = -1.0 * (-0.13333333333333333 / (-1.3333333333333333 * self.cartMass + self.poleMass * Double.pow(Double.cos(self.previousAngle[7]), 2) + -1.3333333333333333 * self.poleMass))
buffer[2936] = 1.0
buffer[3032] = -1.0 * 1.0
buffer[3033] = -1.0 * 0.05
buffer[3037] = 1.0
buffer[3038] = -1.0 * 0.05
buffer[3132] = -1.0 * ((Double.cos(self.previousAngle[7]) * self.gravity * self.poleLength * Double.pow(self.poleMass, 2) * Double.pow(Double.sin(self.previousAngle[7]), 2) * -0.2 + self.gravity * self.poleLength * Double.pow(self.poleMass, 2) * Double.pow(Double.cos(self.previousAngle[7]), 3) * -0.1 + Double.cos(self.previousAngle[7]) * 0.13333333333333333 * self.gravity * self.poleLength * self.cartMass * self.poleMass + Double.cos(self.previousAngle[7]) * self.gravity * self.poleLength * Double.pow(self.poleMass, 2) * 0.13333333333333333) / Double.pow(1.3333333333333333 * self.poleLength * self.cartMass + self.poleLength * self.poleMass * Double.pow(Double.cos(self.previousAngle[7]), 2) * -1.0 + 1.3333333333333333 * self.poleLength * self.poleMass, 2)) + -1.0 * ((Double.cos(self.previousAngle[7]) * self.gravity * self.poleLength * Double.pow(self.cartMass, 2) * 0.13333333333333333 + Double.cos(self.previousAngle[7]) * self.gravity * self.poleLength * self.cartMass * self.poleMass * Double.pow(Double.sin(self.previousAngle[7]), 2) * -0.2 + self.gravity * self.poleLength * self.cartMass * self.poleMass * Double.pow(Double.cos(self.previousAngle[7]), 3) * -0.1 + Double.cos(self.previousAngle[7]) * 0.13333333333333333 * self.gravity * self.poleLength * self.cartMass * self.poleMass) / Double.pow(1.3333333333333333 * self.poleLength * self.cartMass + self.poleLength * self.poleMass * Double.pow(Double.cos(self.previousAngle[7]), 2) * -1.0 + 1.3333333333333333 * self.poleLength * self.poleMass, 2))
buffer[3133] = -1.0 * 1.0 + -1.0 * ((Double.sin(self.previousAngle[7]) * -0.2 * self.previousAngularVelocity[7]) / ((1.3333333333333333 * self.cartMass) / self.poleMass + Double.cos(self.previousAngle[7]) * -1.0 + 1.3333333333333333))
buffer[3134] = -1.0 * (-0.1 / (1.3333333333333333 * self.poleLength * self.cartMass + 1.3333333333333333 * self.poleLength * self.poleMass + Double.cos(self.previousAngle[7]) * -1.0 * self.poleLength * self.poleMass))
buffer[3138] = 1.0
buffer[3235] = -1.0 * 1.0
buffer[3236] = -1.0 * 0.05
buffer[3240] = 1.0
buffer[3241] = -1.0 * 0.05
buffer[3336] = -1.0 * 1.0
buffer[3337] = -1.0 * (((self.gravity * self.cartMass * Double.pow(Double.sin(self.previousAngle[8]), 2) * 0.13333333333333333) / self.poleMass + (self.gravity * self.cartMass * Double.pow(Double.cos(self.previousAngle[8]), 2) * -0.13333333333333333) / self.poleMass + self.gravity * Double.pow(Double.cos(self.previousAngle[8]), 2) * -0.13333333333333333 + self.gravity * Double.pow(Double.cos(self.previousAngle[8]), 4) * 0.1 + self.gravity * Double.pow(Double.sin(self.previousAngle[8]), 2) * Double.pow(Double.cos(self.previousAngle[8]), 2) * 0.2 + self.gravity * Double.pow(Double.sin(self.previousAngle[8]), 2) * Double.pow(Double.cos(self.previousAngle[8]), 2) * -0.1 + self.gravity * Double.pow(Double.sin(self.previousAngle[8]), 2) * 0.13333333333333333) / Double.pow((-1.3333333333333333 * self.cartMass) / self.poleMass + Double.pow(Double.cos(self.previousAngle[8]), 2) + -1.3333333333333333, 2))
buffer[3338] = -1.0 * ((self.poleLength * Double.sin(self.previousAngle[8]) * -0.26666666666666666 * self.previousAngularVelocity[8]) / ((-1.3333333333333333 * self.cartMass) / self.poleMass + Double.pow(Double.cos(self.previousAngle[8]), 2) + -1.3333333333333333))
buffer[3339] = -1.0 * (-0.13333333333333333 / (-1.3333333333333333 * self.cartMass + -1.3333333333333333 * self.poleMass + self.poleMass * Double.pow(Double.cos(self.previousAngle[8]), 2)))
buffer[3341] = 1.0
buffer[3437] = -1.0 * 1.0
buffer[3438] = -1.0 * 0.05
buffer[3442] = 1.0
buffer[3443] = -1.0 * 0.05
buffer[3537] = -1.0 * ((Double.cos(self.previousAngle[8]) * self.gravity * self.poleLength * Double.pow(Double.sin(self.previousAngle[8]), 2) * Double.pow(self.poleMass, 2) * -0.2 + Double.cos(self.previousAngle[8]) * self.gravity * self.poleLength * Double.pow(self.poleMass, 2) * 0.13333333333333333 + Double.cos(self.previousAngle[8]) * 0.13333333333333333 * self.gravity * self.poleLength * self.cartMass * self.poleMass + self.gravity * self.poleLength * Double.pow(self.poleMass, 2) * Double.pow(Double.cos(self.previousAngle[8]), 3) * -0.1) / Double.pow(1.3333333333333333 * self.poleLength * self.cartMass + 1.3333333333333333 * self.poleLength * self.poleMass + self.poleLength * self.poleMass * Double.pow(Double.cos(self.previousAngle[8]), 2) * -1.0, 2)) + -1.0 * ((self.gravity * self.poleLength * self.cartMass * self.poleMass * Double.pow(Double.cos(self.previousAngle[8]), 3) * -0.1 + Double.cos(self.previousAngle[8]) * self.gravity * self.poleLength * Double.pow(self.cartMass, 2) * 0.13333333333333333 + Double.cos(self.previousAngle[8]) * 0.13333333333333333 * self.gravity * self.poleLength * self.cartMass * self.poleMass + Double.cos(self.previousAngle[8]) * self.gravity * self.poleLength * self.cartMass * self.poleMass * Double.pow(Double.sin(self.previousAngle[8]), 2) * -0.2) / Double.pow(1.3333333333333333 * self.poleLength * self.cartMass + 1.3333333333333333 * self.poleLength * self.poleMass + self.poleLength * self.poleMass * Double.pow(Double.cos(self.previousAngle[8]), 2) * -1.0, 2))
buffer[3538] = -1.0 * ((Double.sin(self.previousAngle[8]) * -0.2 * self.previousAngularVelocity[8]) / ((1.3333333333333333 * self.cartMass) / self.poleMass + Double.cos(self.previousAngle[8]) * -1.0 + 1.3333333333333333)) + -1.0 * 1.0
buffer[3539] = -1.0 * (-0.1 / (1.3333333333333333 * self.poleLength * self.cartMass + 1.3333333333333333 * self.poleLength * self.poleMass + Double.cos(self.previousAngle[8]) * -1.0 * self.poleLength * self.poleMass))
buffer[3543] = 1.0
buffer[3640] = -1.0 * 1.0
buffer[3641] = -1.0 * 0.05
buffer[3645] = 1.0
buffer[3646] = -1.0 * 0.05
buffer[3741] = -1.0 * 1.0
buffer[3742] = -1.0 * (((self.gravity * self.cartMass * Double.pow(Double.sin(self.previousAngle[9]), 2) * 0.13333333333333333) / self.poleMass + (self.gravity * self.cartMass * Double.pow(Double.cos(self.previousAngle[9]), 2) * -0.13333333333333333) / self.poleMass + self.gravity * Double.pow(Double.sin(self.previousAngle[9]), 2) * Double.pow(Double.cos(self.previousAngle[9]), 2) * 0.2 + self.gravity * Double.pow(Double.cos(self.previousAngle[9]), 2) * -0.13333333333333333 + self.gravity * Double.pow(Double.sin(self.previousAngle[9]), 2) * Double.pow(Double.cos(self.previousAngle[9]), 2) * -0.1 + self.gravity * Double.pow(Double.cos(self.previousAngle[9]), 4) * 0.1 + self.gravity * Double.pow(Double.sin(self.previousAngle[9]), 2) * 0.13333333333333333) / Double.pow((-1.3333333333333333 * self.cartMass) / self.poleMass + Double.pow(Double.cos(self.previousAngle[9]), 2) + -1.3333333333333333, 2))
buffer[3743] = -1.0 * ((self.poleLength * Double.sin(self.previousAngle[9]) * -0.26666666666666666 * self.previousAngularVelocity[9]) / ((-1.3333333333333333 * self.cartMass) / self.poleMass + Double.pow(Double.cos(self.previousAngle[9]), 2) + -1.3333333333333333))
buffer[3744] = -1.0 * (-0.13333333333333333 / (self.poleMass * Double.pow(Double.cos(self.previousAngle[9]), 2) + -1.3333333333333333 * self.cartMass + -1.3333333333333333 * self.poleMass))
buffer[3746] = 1.0
buffer[3842] = -1.0 * 1.0
buffer[3843] = -1.0 * 0.05
buffer[3847] = 1.0
buffer[3848] = -1.0 * 0.05
buffer[3942] = -1.0 * ((Double.cos(self.previousAngle[9]) * 0.13333333333333333 * self.gravity * self.poleLength * self.cartMass * self.poleMass + Double.cos(self.previousAngle[9]) * self.gravity * self.poleLength * self.cartMass * self.poleMass * Double.pow(Double.sin(self.previousAngle[9]), 2) * -0.2 + Double.cos(self.previousAngle[9]) * self.gravity * self.poleLength * Double.pow(self.cartMass, 2) * 0.13333333333333333 + self.gravity * self.poleLength * self.cartMass * self.poleMass * Double.pow(Double.cos(self.previousAngle[9]), 3) * -0.1) / Double.pow(1.3333333333333333 * self.poleLength * self.cartMass + 1.3333333333333333 * self.poleLength * self.poleMass + self.poleLength * self.poleMass * Double.pow(Double.cos(self.previousAngle[9]), 2) * -1.0, 2)) + -1.0 * ((Double.cos(self.previousAngle[9]) * 0.13333333333333333 * self.gravity * self.poleLength * self.cartMass * self.poleMass + self.gravity * self.poleLength * Double.pow(self.poleMass, 2) * Double.pow(Double.cos(self.previousAngle[9]), 3) * -0.1 + Double.cos(self.previousAngle[9]) * self.gravity * self.poleLength * Double.pow(self.poleMass, 2) * 0.13333333333333333 + Double.cos(self.previousAngle[9]) * self.gravity * self.poleLength * Double.pow(self.poleMass, 2) * Double.pow(Double.sin(self.previousAngle[9]), 2) * -0.2) / Double.pow(1.3333333333333333 * self.poleLength * self.cartMass + 1.3333333333333333 * self.poleLength * self.poleMass + self.poleLength * self.poleMass * Double.pow(Double.cos(self.previousAngle[9]), 2) * -1.0, 2))
buffer[3943] = -1.0 * 1.0 + -1.0 * ((Double.sin(self.previousAngle[9]) * -0.2 * self.previousAngularVelocity[9]) / ((1.3333333333333333 * self.cartMass) / self.poleMass + Double.cos(self.previousAngle[9]) * -1.0 + 1.3333333333333333))
buffer[3944] = -1.0 * (-0.1 / (Double.cos(self.previousAngle[9]) * -1.0 * self.poleLength * self.poleMass + 1.3333333333333333 * self.poleLength * self.cartMass + 1.3333333333333333 * self.poleLength * self.poleMass))
buffer[3948] = 1.0
buffer[4045] = -1.0 * 1.0
buffer[4046] = -1.0 * 0.05
buffer[4050] = 1.0
buffer[4051] = -1.0 * 0.05
buffer[4146] = -1.0 * 1.0
buffer[4147] = -1.0 * (((self.gravity * self.cartMass * Double.pow(Double.cos(self.previousAngle[10]), 2) * -0.13333333333333333) / self.poleMass + (self.gravity * self.cartMass * Double.pow(Double.sin(self.previousAngle[10]), 2) * 0.13333333333333333) / self.poleMass + self.gravity * Double.pow(Double.sin(self.previousAngle[10]), 2) * Double.pow(Double.cos(self.previousAngle[10]), 2) * -0.1 + self.gravity * Double.pow(Double.cos(self.previousAngle[10]), 2) * -0.13333333333333333 + self.gravity * Double.pow(Double.cos(self.previousAngle[10]), 4) * 0.1 + self.gravity * Double.pow(Double.sin(self.previousAngle[10]), 2) * 0.13333333333333333 + self.gravity * Double.pow(Double.sin(self.previousAngle[10]), 2) * Double.pow(Double.cos(self.previousAngle[10]), 2) * 0.2) / Double.pow((-1.3333333333333333 * self.cartMass) / self.poleMass + Double.pow(Double.cos(self.previousAngle[10]), 2) + -1.3333333333333333, 2))
buffer[4148] = -1.0 * ((self.poleLength * Double.sin(self.previousAngle[10]) * -0.26666666666666666 * self.previousAngularVelocity[10]) / ((-1.3333333333333333 * self.cartMass) / self.poleMass + Double.pow(Double.cos(self.previousAngle[10]), 2) + -1.3333333333333333))
buffer[4149] = -1.0 * (-0.13333333333333333 / (-1.3333333333333333 * self.cartMass + self.poleMass * Double.pow(Double.cos(self.previousAngle[10]), 2) + -1.3333333333333333 * self.poleMass))
buffer[4151] = 1.0
buffer[4247] = -1.0 * 1.0
buffer[4248] = -1.0 * 0.05
buffer[4252] = 1.0
buffer[4253] = -1.0 * 0.05
buffer[4347] = -1.0 * ((self.gravity * self.poleLength * Double.pow(self.poleMass, 2) * Double.pow(Double.cos(self.previousAngle[10]), 3) * -0.1 + Double.cos(self.previousAngle[10]) * self.gravity * self.poleLength * Double.pow(self.poleMass, 2) * Double.pow(Double.sin(self.previousAngle[10]), 2) * -0.2 + Double.cos(self.previousAngle[10]) * self.gravity * self.poleLength * Double.pow(self.poleMass, 2) * 0.13333333333333333 + Double.cos(self.previousAngle[10]) * 0.13333333333333333 * self.gravity * self.poleLength * self.cartMass * self.poleMass) / Double.pow(1.3333333333333333 * self.poleLength * self.cartMass + 1.3333333333333333 * self.poleLength * self.poleMass + self.poleLength * self.poleMass * Double.pow(Double.cos(self.previousAngle[10]), 2) * -1.0, 2)) + -1.0 * ((self.gravity * self.poleLength * self.cartMass * self.poleMass * Double.pow(Double.cos(self.previousAngle[10]), 3) * -0.1 + Double.cos(self.previousAngle[10]) * self.gravity * self.poleLength * Double.pow(self.cartMass, 2) * 0.13333333333333333 + Double.cos(self.previousAngle[10]) * 0.13333333333333333 * self.gravity * self.poleLength * self.cartMass * self.poleMass + Double.cos(self.previousAngle[10]) * self.gravity * self.poleLength * self.cartMass * self.poleMass * Double.pow(Double.sin(self.previousAngle[10]), 2) * -0.2) / Double.pow(1.3333333333333333 * self.poleLength * self.cartMass + 1.3333333333333333 * self.poleLength * self.poleMass + self.poleLength * self.poleMass * Double.pow(Double.cos(self.previousAngle[10]), 2) * -1.0, 2))
buffer[4348] = -1.0 * 1.0 + -1.0 * ((Double.sin(self.previousAngle[10]) * -0.2 * self.previousAngularVelocity[10]) / ((1.3333333333333333 * self.cartMass) / self.poleMass + Double.cos(self.previousAngle[10]) * -1.0 + 1.3333333333333333))
buffer[4349] = -1.0 * (-0.1 / (1.3333333333333333 * self.poleLength * self.cartMass + 1.3333333333333333 * self.poleLength * self.poleMass + Double.cos(self.previousAngle[10]) * -1.0 * self.poleLength * self.poleMass))
buffer[4353] = 1.0
buffer[4450] = -1.0 * 1.0
buffer[4451] = -1.0 * 0.05
buffer[4455] = 1.0
buffer[4456] = -1.0 * 0.05
buffer[4551] = -1.0 * 1.0
buffer[4552] = -1.0 * (((self.gravity * self.cartMass * Double.pow(Double.cos(self.previousAngle[11]), 2) * -0.13333333333333333) / self.poleMass + (self.gravity * self.cartMass * Double.pow(Double.sin(self.previousAngle[11]), 2) * 0.13333333333333333) / self.poleMass + self.gravity * Double.pow(Double.sin(self.previousAngle[11]), 2) * Double.pow(Double.cos(self.previousAngle[11]), 2) * 0.2 + self.gravity * Double.pow(Double.sin(self.previousAngle[11]), 2) * Double.pow(Double.cos(self.previousAngle[11]), 2) * -0.1 + self.gravity * Double.pow(Double.sin(self.previousAngle[11]), 2) * 0.13333333333333333 + self.gravity * Double.pow(Double.cos(self.previousAngle[11]), 2) * -0.13333333333333333 + self.gravity * Double.pow(Double.cos(self.previousAngle[11]), 4) * 0.1) / Double.pow((-1.3333333333333333 * self.cartMass) / self.poleMass + Double.pow(Double.cos(self.previousAngle[11]), 2) + -1.3333333333333333, 2))
buffer[4553] = -1.0 * ((self.poleLength * Double.sin(self.previousAngle[11]) * -0.26666666666666666 * self.previousAngularVelocity[11]) / ((-1.3333333333333333 * self.cartMass) / self.poleMass + Double.pow(Double.cos(self.previousAngle[11]), 2) + -1.3333333333333333))
buffer[4554] = -1.0 * (-0.13333333333333333 / (-1.3333333333333333 * self.cartMass + -1.3333333333333333 * self.poleMass + self.poleMass * Double.pow(Double.cos(self.previousAngle[11]), 2)))
buffer[4556] = 1.0
buffer[4652] = -1.0 * 1.0
buffer[4653] = -1.0 * 0.05
buffer[4657] = 1.0
buffer[4658] = -1.0 * 0.05
buffer[4752] = -1.0 * ((Double.cos(self.previousAngle[11]) * self.gravity * self.poleLength * Double.pow(self.poleMass, 2) * 0.13333333333333333 + Double.cos(self.previousAngle[11]) * self.gravity * self.poleLength * Double.pow(self.poleMass, 2) * Double.pow(Double.sin(self.previousAngle[11]), 2) * -0.2 + self.gravity * self.poleLength * Double.pow(Double.cos(self.previousAngle[11]), 3) * Double.pow(self.poleMass, 2) * -0.1 + Double.cos(self.previousAngle[11]) * 0.13333333333333333 * self.gravity * self.poleLength * self.cartMass * self.poleMass) / Double.pow(1.3333333333333333 * self.poleLength * self.cartMass + 1.3333333333333333 * self.poleLength * self.poleMass + self.poleLength * self.poleMass * Double.pow(Double.cos(self.previousAngle[11]), 2) * -1.0, 2)) + -1.0 * ((Double.cos(self.previousAngle[11]) * 0.13333333333333333 * self.gravity * self.poleLength * self.cartMass * self.poleMass + Double.cos(self.previousAngle[11]) * self.gravity * self.poleLength * Double.pow(self.cartMass, 2) * 0.13333333333333333 + Double.cos(self.previousAngle[11]) * self.gravity * self.poleLength * self.cartMass * self.poleMass * Double.pow(Double.sin(self.previousAngle[11]), 2) * -0.2 + self.gravity * self.poleLength * self.cartMass * self.poleMass * Double.pow(Double.cos(self.previousAngle[11]), 3) * -0.1) / Double.pow(1.3333333333333333 * self.poleLength * self.cartMass + 1.3333333333333333 * self.poleLength * self.poleMass + self.poleLength * self.poleMass * Double.pow(Double.cos(self.previousAngle[11]), 2) * -1.0, 2))
buffer[4753] = -1.0 * 1.0 + -1.0 * ((Double.sin(self.previousAngle[11]) * -0.2 * self.previousAngularVelocity[11]) / ((1.3333333333333333 * self.cartMass) / self.poleMass + Double.cos(self.previousAngle[11]) * -1.0 + 1.3333333333333333))
buffer[4754] = -1.0 * (-0.1 / (1.3333333333333333 * self.poleLength * self.cartMass + 1.3333333333333333 * self.poleLength * self.poleMass + Double.cos(self.previousAngle[11]) * -1.0 * self.poleLength * self.poleMass))
buffer[4758] = 1.0
buffer[4855] = -1.0 * 1.0
buffer[4856] = -1.0 * 0.05
buffer[4860] = 1.0
buffer[4861] = -1.0 * 0.05
buffer[4956] = -1.0 * 1.0
buffer[4957] = -1.0 * (((self.gravity * self.cartMass * Double.pow(Double.cos(self.previousAngle[12]), 2) * -0.13333333333333333) / self.poleMass + (self.gravity * self.cartMass * Double.pow(Double.sin(self.previousAngle[12]), 2) * 0.13333333333333333) / self.poleMass + self.gravity * Double.pow(Double.cos(self.previousAngle[12]), 2) * Double.pow(Double.sin(self.previousAngle[12]), 2) * 0.2 + self.gravity * Double.pow(Double.sin(self.previousAngle[12]), 2) * 0.13333333333333333 + self.gravity * Double.pow(Double.cos(self.previousAngle[12]), 2) * -0.13333333333333333 + self.gravity * Double.pow(Double.cos(self.previousAngle[12]), 2) * Double.pow(Double.sin(self.previousAngle[12]), 2) * -0.1 + self.gravity * Double.pow(Double.cos(self.previousAngle[12]), 4) * 0.1) / Double.pow((-1.3333333333333333 * self.cartMass) / self.poleMass + Double.pow(Double.cos(self.previousAngle[12]), 2) + -1.3333333333333333, 2))
buffer[4958] = -1.0 * ((self.poleLength * Double.sin(self.previousAngle[12]) * -0.26666666666666666 * self.previousAngularVelocity[12]) / ((-1.3333333333333333 * self.cartMass) / self.poleMass + Double.pow(Double.cos(self.previousAngle[12]), 2) + -1.3333333333333333))
buffer[4959] = -1.0 * (-0.13333333333333333 / (-1.3333333333333333 * self.cartMass + self.poleMass * Double.pow(Double.cos(self.previousAngle[12]), 2) + -1.3333333333333333 * self.poleMass))
buffer[4961] = 1.0
buffer[5057] = -1.0 * 1.0
buffer[5058] = -1.0 * 0.05
buffer[5062] = 1.0
buffer[5063] = -1.0 * 0.05
buffer[5157] = -1.0 * ((Double.cos(self.previousAngle[12]) * self.gravity * self.poleLength * self.cartMass * self.poleMass * Double.pow(Double.sin(self.previousAngle[12]), 2) * -0.2 + Double.cos(self.previousAngle[12]) * 0.13333333333333333 * self.gravity * self.poleLength * self.cartMass * self.poleMass + self.gravity * self.poleLength * self.cartMass * self.poleMass * Double.pow(Double.cos(self.previousAngle[12]), 3) * -0.1 + Double.cos(self.previousAngle[12]) * self.gravity * self.poleLength * Double.pow(self.cartMass, 2) * 0.13333333333333333) / Double.pow(1.3333333333333333 * self.poleLength * self.cartMass + 1.3333333333333333 * self.poleLength * self.poleMass + self.poleLength * self.poleMass * Double.pow(Double.cos(self.previousAngle[12]), 2) * -1.0, 2)) + -1.0 * ((Double.cos(self.previousAngle[12]) * self.gravity * self.poleLength * Double.pow(self.poleMass, 2) * Double.pow(Double.sin(self.previousAngle[12]), 2) * -0.2 + Double.cos(self.previousAngle[12]) * 0.13333333333333333 * self.gravity * self.poleLength * self.cartMass * self.poleMass + self.gravity * self.poleLength * Double.pow(self.poleMass, 2) * Double.pow(Double.cos(self.previousAngle[12]), 3) * -0.1 + Double.cos(self.previousAngle[12]) * self.gravity * self.poleLength * Double.pow(self.poleMass, 2) * 0.13333333333333333) / Double.pow(1.3333333333333333 * self.poleLength * self.cartMass + 1.3333333333333333 * self.poleLength * self.poleMass + self.poleLength * self.poleMass * Double.pow(Double.cos(self.previousAngle[12]), 2) * -1.0, 2))
buffer[5158] = -1.0 * 1.0 + -1.0 * ((Double.sin(self.previousAngle[12]) * -0.2 * self.previousAngularVelocity[12]) / ((1.3333333333333333 * self.cartMass) / self.poleMass + Double.cos(self.previousAngle[12]) * -1.0 + 1.3333333333333333))
buffer[5159] = -1.0 * (-0.1 / (1.3333333333333333 * self.poleLength * self.cartMass + 1.3333333333333333 * self.poleLength * self.poleMass + Double.cos(self.previousAngle[12]) * -1.0 * self.poleLength * self.poleMass))
buffer[5163] = 1.0
buffer[5260] = -1.0 * 1.0
buffer[5261] = -1.0 * 0.05
buffer[5265] = 1.0
buffer[5266] = -1.0 * 0.05
buffer[5361] = -1.0 * 1.0
buffer[5362] = -1.0 * (((self.gravity * self.cartMass * Double.pow(Double.sin(self.previousAngle[13]), 2) * 0.13333333333333333) / self.poleMass + (self.gravity * self.cartMass * Double.pow(Double.cos(self.previousAngle[13]), 2) * -0.13333333333333333) / self.poleMass + self.gravity * Double.pow(Double.cos(self.previousAngle[13]), 4) * 0.1 + self.gravity * Double.pow(Double.sin(self.previousAngle[13]), 2) * 0.13333333333333333 + self.gravity * Double.pow(Double.cos(self.previousAngle[13]), 2) * Double.pow(Double.sin(self.previousAngle[13]), 2) * 0.2 + self.gravity * Double.pow(Double.cos(self.previousAngle[13]), 2) * Double.pow(Double.sin(self.previousAngle[13]), 2) * -0.1 + self.gravity * Double.pow(Double.cos(self.previousAngle[13]), 2) * -0.13333333333333333) / Double.pow((-1.3333333333333333 * self.cartMass) / self.poleMass + Double.pow(Double.cos(self.previousAngle[13]), 2) + -1.3333333333333333, 2))
buffer[5363] = -1.0 * ((self.poleLength * Double.sin(self.previousAngle[13]) * -0.26666666666666666 * self.previousAngularVelocity[13]) / ((-1.3333333333333333 * self.cartMass) / self.poleMass + Double.pow(Double.cos(self.previousAngle[13]), 2) + -1.3333333333333333))
buffer[5364] = -1.0 * (-0.13333333333333333 / (-1.3333333333333333 * self.cartMass + self.poleMass * Double.pow(Double.cos(self.previousAngle[13]), 2) + -1.3333333333333333 * self.poleMass))
buffer[5366] = 1.0
buffer[5462] = -1.0 * 1.0
buffer[5463] = -1.0 * 0.05
buffer[5467] = 1.0
buffer[5468] = -1.0 * 0.05
buffer[5562] = -1.0 * ((Double.cos(self.previousAngle[13]) * self.gravity * self.poleLength * self.cartMass * self.poleMass * Double.pow(Double.sin(self.previousAngle[13]), 2) * -0.2 + self.gravity * self.poleLength * self.cartMass * self.poleMass * Double.pow(Double.cos(self.previousAngle[13]), 3) * -0.1 + Double.cos(self.previousAngle[13]) * self.gravity * self.poleLength * Double.pow(self.cartMass, 2) * 0.13333333333333333 + Double.cos(self.previousAngle[13]) * 0.13333333333333333 * self.gravity * self.poleLength * self.cartMass * self.poleMass) / Double.pow(self.poleLength * self.poleMass * Double.pow(Double.cos(self.previousAngle[13]), 2) * -1.0 + 1.3333333333333333 * self.poleLength * self.cartMass + 1.3333333333333333 * self.poleLength * self.poleMass, 2)) + -1.0 * ((Double.cos(self.previousAngle[13]) * self.gravity * self.poleLength * Double.pow(self.poleMass, 2) * 0.13333333333333333 + Double.cos(self.previousAngle[13]) * self.gravity * self.poleLength * Double.pow(self.poleMass, 2) * Double.pow(Double.sin(self.previousAngle[13]), 2) * -0.2 + Double.cos(self.previousAngle[13]) * 0.13333333333333333 * self.gravity * self.poleLength * self.cartMass * self.poleMass + self.gravity * self.poleLength * Double.pow(self.poleMass, 2) * Double.pow(Double.cos(self.previousAngle[13]), 3) * -0.1) / Double.pow(self.poleLength * self.poleMass * Double.pow(Double.cos(self.previousAngle[13]), 2) * -1.0 + 1.3333333333333333 * self.poleLength * self.cartMass + 1.3333333333333333 * self.poleLength * self.poleMass, 2))
buffer[5563] = -1.0 * 1.0 + -1.0 * ((Double.sin(self.previousAngle[13]) * -0.2 * self.previousAngularVelocity[13]) / ((1.3333333333333333 * self.cartMass) / self.poleMass + Double.cos(self.previousAngle[13]) * -1.0 + 1.3333333333333333))
buffer[5564] = -1.0 * (-0.1 / (1.3333333333333333 * self.poleLength * self.cartMass + 1.3333333333333333 * self.poleLength * self.poleMass + Double.cos(self.previousAngle[13]) * -1.0 * self.poleLength * self.poleMass))
buffer[5568] = 1.0
buffer[5665] = -1.0 * 1.0
buffer[5666] = -1.0 * 0.05
buffer[5670] = 1.0
buffer[5671] = -1.0 * 0.05
buffer[5766] = -1.0 * 1.0
buffer[5767] = -1.0 * (((self.gravity * self.cartMass * Double.pow(Double.sin(self.previousAngle[14]), 2) * 0.13333333333333333) / self.poleMass + (self.gravity * self.cartMass * Double.pow(Double.cos(self.previousAngle[14]), 2) * -0.13333333333333333) / self.poleMass + self.gravity * Double.pow(Double.cos(self.previousAngle[14]), 2) * -0.13333333333333333 + self.gravity * Double.pow(Double.sin(self.previousAngle[14]), 2) * 0.13333333333333333 + self.gravity * Double.pow(Double.cos(self.previousAngle[14]), 4) * 0.1 + self.gravity * Double.pow(Double.cos(self.previousAngle[14]), 2) * Double.pow(Double.sin(self.previousAngle[14]), 2) * 0.2 + self.gravity * Double.pow(Double.cos(self.previousAngle[14]), 2) * Double.pow(Double.sin(self.previousAngle[14]), 2) * -0.1) / Double.pow((-1.3333333333333333 * self.cartMass) / self.poleMass + Double.pow(Double.cos(self.previousAngle[14]), 2) + -1.3333333333333333, 2))
buffer[5768] = -1.0 * ((self.poleLength * Double.sin(self.previousAngle[14]) * -0.26666666666666666 * self.previousAngularVelocity[14]) / ((-1.3333333333333333 * self.cartMass) / self.poleMass + Double.pow(Double.cos(self.previousAngle[14]), 2) + -1.3333333333333333))
buffer[5769] = -1.0 * (-0.13333333333333333 / (self.poleMass * Double.pow(Double.cos(self.previousAngle[14]), 2) + -1.3333333333333333 * self.cartMass + -1.3333333333333333 * self.poleMass))
buffer[5771] = 1.0
buffer[5867] = -1.0 * 1.0
buffer[5868] = -1.0 * 0.05
buffer[5872] = 1.0
buffer[5873] = -1.0 * 0.05
buffer[5967] = -1.0 * ((self.gravity * self.poleLength * self.cartMass * self.poleMass * Double.pow(Double.cos(self.previousAngle[14]), 3) * -0.1 + Double.cos(self.previousAngle[14]) * self.gravity * self.poleLength * self.cartMass * self.poleMass * Double.pow(Double.sin(self.previousAngle[14]), 2) * -0.2 + Double.cos(self.previousAngle[14]) * self.gravity * self.poleLength * Double.pow(self.cartMass, 2) * 0.13333333333333333 + Double.cos(self.previousAngle[14]) * 0.13333333333333333 * self.gravity * self.poleLength * self.cartMass * self.poleMass) / Double.pow(1.3333333333333333 * self.poleLength * self.cartMass + 1.3333333333333333 * self.poleLength * self.poleMass + self.poleLength * self.poleMass * Double.pow(Double.cos(self.previousAngle[14]), 2) * -1.0, 2)) + -1.0 * ((Double.cos(self.previousAngle[14]) * self.gravity * self.poleLength * Double.pow(self.poleMass, 2) * Double.pow(Double.sin(self.previousAngle[14]), 2) * -0.2 + Double.cos(self.previousAngle[14]) * self.gravity * self.poleLength * Double.pow(self.poleMass, 2) * 0.13333333333333333 + self.gravity * self.poleLength * Double.pow(self.poleMass, 2) * Double.pow(Double.cos(self.previousAngle[14]), 3) * -0.1 + Double.cos(self.previousAngle[14]) * 0.13333333333333333 * self.gravity * self.poleLength * self.cartMass * self.poleMass) / Double.pow(1.3333333333333333 * self.poleLength * self.cartMass + 1.3333333333333333 * self.poleLength * self.poleMass + self.poleLength * self.poleMass * Double.pow(Double.cos(self.previousAngle[14]), 2) * -1.0, 2))
buffer[5968] = -1.0 * 1.0 + -1.0 * ((Double.sin(self.previousAngle[14]) * -0.2 * self.previousAngularVelocity[14]) / ((1.3333333333333333 * self.cartMass) / self.poleMass + Double.cos(self.previousAngle[14]) * -1.0 + 1.3333333333333333))
buffer[5969] = -1.0 * (-0.1 / (1.3333333333333333 * self.poleLength * self.cartMass + Double.cos(self.previousAngle[14]) * -1.0 * self.poleLength * self.poleMass + 1.3333333333333333 * self.poleLength * self.poleMass))
buffer[5973] = 1.0
buffer[6070] = -1.0 * 1.0
buffer[6071] = -1.0 * 0.05
buffer[6075] = 1.0
buffer[6076] = -1.0 * 0.05
buffer[6171] = -1.0 * 1.0
buffer[6172] = -1.0 * (((self.gravity * self.cartMass * Double.pow(Double.cos(self.previousAngle[15]), 2) * -0.13333333333333333) / self.poleMass + (self.gravity * self.cartMass * Double.pow(Double.sin(self.previousAngle[15]), 2) * 0.13333333333333333) / self.poleMass + self.gravity * Double.pow(Double.sin(self.previousAngle[15]), 2) * 0.13333333333333333 + self.gravity * Double.pow(Double.cos(self.previousAngle[15]), 4) * 0.1 + self.gravity * Double.pow(Double.cos(self.previousAngle[15]), 2) * Double.pow(Double.sin(self.previousAngle[15]), 2) * 0.2 + self.gravity * Double.pow(Double.cos(self.previousAngle[15]), 2) * -0.13333333333333333 + self.gravity * Double.pow(Double.cos(self.previousAngle[15]), 2) * Double.pow(Double.sin(self.previousAngle[15]), 2) * -0.1) / Double.pow((-1.3333333333333333 * self.cartMass) / self.poleMass + Double.pow(Double.cos(self.previousAngle[15]), 2) + -1.3333333333333333, 2))
buffer[6173] = -1.0 * ((self.poleLength * Double.sin(self.previousAngle[15]) * -0.26666666666666666 * self.previousAngularVelocity[15]) / ((-1.3333333333333333 * self.cartMass) / self.poleMass + Double.pow(Double.cos(self.previousAngle[15]), 2) + -1.3333333333333333))
buffer[6174] = -1.0 * (-0.13333333333333333 / (-1.3333333333333333 * self.cartMass + -1.3333333333333333 * self.poleMass + self.poleMass * Double.pow(Double.cos(self.previousAngle[15]), 2)))
buffer[6176] = 1.0
buffer[6272] = -1.0 * 1.0
buffer[6273] = -1.0 * 0.05
buffer[6277] = 1.0
buffer[6278] = -1.0 * 0.05
buffer[6372] = -1.0 * ((self.gravity * self.poleLength * Double.pow(self.poleMass, 2) * Double.pow(Double.cos(self.previousAngle[15]), 3) * -0.1 + Double.cos(self.previousAngle[15]) * 0.13333333333333333 * self.gravity * self.poleLength * self.cartMass * self.poleMass + Double.cos(self.previousAngle[15]) * self.gravity * self.poleLength * Double.pow(self.poleMass, 2) * 0.13333333333333333 + Double.cos(self.previousAngle[15]) * self.gravity * self.poleLength * Double.pow(self.poleMass, 2) * Double.pow(Double.sin(self.previousAngle[15]), 2) * -0.2) / Double.pow(1.3333333333333333 * self.poleLength * self.cartMass + self.poleLength * self.poleMass * Double.pow(Double.cos(self.previousAngle[15]), 2) * -1.0 + 1.3333333333333333 * self.poleLength * self.poleMass, 2)) + -1.0 * ((Double.cos(self.previousAngle[15]) * 0.13333333333333333 * self.gravity * self.poleLength * self.cartMass * self.poleMass + Double.cos(self.previousAngle[15]) * self.gravity * self.poleLength * Double.pow(self.cartMass, 2) * 0.13333333333333333 + Double.cos(self.previousAngle[15]) * self.gravity * self.poleLength * self.cartMass * self.poleMass * Double.pow(Double.sin(self.previousAngle[15]), 2) * -0.2 + self.gravity * self.poleLength * self.cartMass * self.poleMass * Double.pow(Double.cos(self.previousAngle[15]), 3) * -0.1) / Double.pow(1.3333333333333333 * self.poleLength * self.cartMass + self.poleLength * self.poleMass * Double.pow(Double.cos(self.previousAngle[15]), 2) * -1.0 + 1.3333333333333333 * self.poleLength * self.poleMass, 2))
buffer[6373] = -1.0 * 1.0 + -1.0 * ((Double.sin(self.previousAngle[15]) * -0.2 * self.previousAngularVelocity[15]) / ((1.3333333333333333 * self.cartMass) / self.poleMass + Double.cos(self.previousAngle[15]) * -1.0 + 1.3333333333333333))
buffer[6374] = -1.0 * (-0.1 / (Double.cos(self.previousAngle[15]) * -1.0 * self.poleLength * self.poleMass + 1.3333333333333333 * self.poleLength * self.cartMass + 1.3333333333333333 * self.poleLength * self.poleMass))
buffer[6378] = 1.0
buffer[6475] = -1.0 * 1.0
buffer[6476] = -1.0 * 0.05
buffer[6480] = 1.0
buffer[6481] = -1.0 * 0.05
buffer[6576] = -1.0 * 1.0
buffer[6577] = -1.0 * (((self.gravity * self.cartMass * Double.pow(Double.cos(self.previousAngle[16]), 2) * -0.13333333333333333) / self.poleMass + (self.gravity * self.cartMass * Double.pow(Double.sin(self.previousAngle[16]), 2) * 0.13333333333333333) / self.poleMass + self.gravity * Double.pow(Double.cos(self.previousAngle[16]), 2) * -0.13333333333333333 + self.gravity * Double.pow(Double.sin(self.previousAngle[16]), 2) * 0.13333333333333333 + self.gravity * Double.pow(Double.cos(self.previousAngle[16]), 4) * 0.1 + self.gravity * Double.pow(Double.sin(self.previousAngle[16]), 2) * Double.pow(Double.cos(self.previousAngle[16]), 2) * 0.2 + self.gravity * Double.pow(Double.sin(self.previousAngle[16]), 2) * Double.pow(Double.cos(self.previousAngle[16]), 2) * -0.1) / Double.pow((-1.3333333333333333 * self.cartMass) / self.poleMass + Double.pow(Double.cos(self.previousAngle[16]), 2) + -1.3333333333333333, 2))
buffer[6578] = -1.0 * ((self.poleLength * Double.sin(self.previousAngle[16]) * -0.26666666666666666 * self.previousAngularVelocity[16]) / ((-1.3333333333333333 * self.cartMass) / self.poleMass + Double.pow(Double.cos(self.previousAngle[16]), 2) + -1.3333333333333333))
buffer[6579] = -1.0 * (-0.13333333333333333 / (-1.3333333333333333 * self.cartMass + self.poleMass * Double.pow(Double.cos(self.previousAngle[16]), 2) + -1.3333333333333333 * self.poleMass))
buffer[6581] = 1.0
buffer[6677] = -1.0 * 1.0
buffer[6678] = -1.0 * 0.05
buffer[6682] = 1.0
buffer[6683] = -1.0 * 0.05
buffer[6777] = -1.0 * ((Double.cos(self.previousAngle[16]) * self.gravity * self.poleLength * Double.pow(self.cartMass, 2) * 0.13333333333333333 + Double.cos(self.previousAngle[16]) * 0.13333333333333333 * self.gravity * self.poleLength * self.cartMass * self.poleMass + self.gravity * self.poleLength * self.cartMass * self.poleMass * Double.pow(Double.cos(self.previousAngle[16]), 3) * -0.1 + Double.cos(self.previousAngle[16]) * self.gravity * self.poleLength * self.cartMass * self.poleMass * Double.pow(Double.sin(self.previousAngle[16]), 2) * -0.2) / Double.pow(self.poleLength * self.poleMass * Double.pow(Double.cos(self.previousAngle[16]), 2) * -1.0 + 1.3333333333333333 * self.poleLength * self.cartMass + 1.3333333333333333 * self.poleLength * self.poleMass, 2)) + -1.0 * ((self.gravity * self.poleLength * Double.pow(Double.cos(self.previousAngle[16]), 3) * Double.pow(self.poleMass, 2) * -0.1 + Double.cos(self.previousAngle[16]) * 0.13333333333333333 * self.gravity * self.poleLength * self.cartMass * self.poleMass + Double.cos(self.previousAngle[16]) * self.gravity * self.poleLength * Double.pow(self.poleMass, 2) * 0.13333333333333333 + Double.cos(self.previousAngle[16]) * self.gravity * self.poleLength * Double.pow(Double.sin(self.previousAngle[16]), 2) * Double.pow(self.poleMass, 2) * -0.2) / Double.pow(self.poleLength * self.poleMass * Double.pow(Double.cos(self.previousAngle[16]), 2) * -1.0 + 1.3333333333333333 * self.poleLength * self.cartMass + 1.3333333333333333 * self.poleLength * self.poleMass, 2))
buffer[6778] = -1.0 * 1.0 + -1.0 * ((Double.sin(self.previousAngle[16]) * -0.2 * self.previousAngularVelocity[16]) / ((1.3333333333333333 * self.cartMass) / self.poleMass + Double.cos(self.previousAngle[16]) * -1.0 + 1.3333333333333333))
buffer[6779] = -1.0 * (-0.1 / (1.3333333333333333 * self.poleLength * self.cartMass + 1.3333333333333333 * self.poleLength * self.poleMass + Double.cos(self.previousAngle[16]) * -1.0 * self.poleLength * self.poleMass))
buffer[6783] = 1.0
buffer[6880] = -1.0 * 1.0
buffer[6881] = -1.0 * 0.05
buffer[6885] = 1.0
buffer[6886] = -1.0 * 0.05
buffer[6981] = -1.0 * 1.0
buffer[6982] = -1.0 * (((self.gravity * self.cartMass * Double.pow(Double.sin(self.previousAngle[17]), 2) * 0.13333333333333333) / self.poleMass + (self.gravity * self.cartMass * Double.pow(Double.cos(self.previousAngle[17]), 2) * -0.13333333333333333) / self.poleMass + self.gravity * Double.pow(Double.cos(self.previousAngle[17]), 2) * -0.13333333333333333 + self.gravity * Double.pow(Double.cos(self.previousAngle[17]), 2) * Double.pow(Double.sin(self.previousAngle[17]), 2) * 0.2 + self.gravity * Double.pow(Double.cos(self.previousAngle[17]), 4) * 0.1 + self.gravity * Double.pow(Double.cos(self.previousAngle[17]), 2) * Double.pow(Double.sin(self.previousAngle[17]), 2) * -0.1 + self.gravity * Double.pow(Double.sin(self.previousAngle[17]), 2) * 0.13333333333333333) / Double.pow((-1.3333333333333333 * self.cartMass) / self.poleMass + Double.pow(Double.cos(self.previousAngle[17]), 2) + -1.3333333333333333, 2))
buffer[6983] = -1.0 * ((self.poleLength * Double.sin(self.previousAngle[17]) * -0.26666666666666666 * self.previousAngularVelocity[17]) / ((-1.3333333333333333 * self.cartMass) / self.poleMass + Double.pow(Double.cos(self.previousAngle[17]), 2) + -1.3333333333333333))
buffer[6984] = -1.0 * (-0.13333333333333333 / (-1.3333333333333333 * self.cartMass + self.poleMass * Double.pow(Double.cos(self.previousAngle[17]), 2) + -1.3333333333333333 * self.poleMass))
buffer[6986] = 1.0
buffer[7082] = -1.0 * 1.0
buffer[7083] = -1.0 * 0.05
buffer[7087] = 1.0
buffer[7088] = -1.0 * 0.05
buffer[7182] = -1.0 * ((Double.cos(self.previousAngle[17]) * self.gravity * self.poleLength * self.cartMass * self.poleMass * Double.pow(Double.sin(self.previousAngle[17]), 2) * -0.2 + Double.cos(self.previousAngle[17]) * 0.13333333333333333 * self.gravity * self.poleLength * self.cartMass * self.poleMass + Double.cos(self.previousAngle[17]) * self.gravity * self.poleLength * Double.pow(self.cartMass, 2) * 0.13333333333333333 + self.gravity * self.poleLength * self.cartMass * self.poleMass * Double.pow(Double.cos(self.previousAngle[17]), 3) * -0.1) / Double.pow(self.poleLength * self.poleMass * Double.pow(Double.cos(self.previousAngle[17]), 2) * -1.0 + 1.3333333333333333 * self.poleLength * self.cartMass + 1.3333333333333333 * self.poleLength * self.poleMass, 2)) + -1.0 * ((Double.cos(self.previousAngle[17]) * self.gravity * self.poleLength * Double.pow(self.poleMass, 2) * Double.pow(Double.sin(self.previousAngle[17]), 2) * -0.2 + Double.cos(self.previousAngle[17]) * 0.13333333333333333 * self.gravity * self.poleLength * self.cartMass * self.poleMass + self.gravity * self.poleLength * Double.pow(self.poleMass, 2) * Double.pow(Double.cos(self.previousAngle[17]), 3) * -0.1 + Double.cos(self.previousAngle[17]) * self.gravity * self.poleLength * Double.pow(self.poleMass, 2) * 0.13333333333333333) / Double.pow(self.poleLength * self.poleMass * Double.pow(Double.cos(self.previousAngle[17]), 2) * -1.0 + 1.3333333333333333 * self.poleLength * self.cartMass + 1.3333333333333333 * self.poleLength * self.poleMass, 2))
buffer[7183] = -1.0 * ((Double.sin(self.previousAngle[17]) * -0.2 * self.previousAngularVelocity[17]) / ((1.3333333333333333 * self.cartMass) / self.poleMass + Double.cos(self.previousAngle[17]) * -1.0 + 1.3333333333333333)) + -1.0 * 1.0
buffer[7184] = -1.0 * (-0.1 / (1.3333333333333333 * self.poleLength * self.cartMass + 1.3333333333333333 * self.poleLength * self.poleMass + Double.cos(self.previousAngle[17]) * -1.0 * self.poleLength * self.poleMass))
buffer[7188] = 1.0
buffer[7285] = -1.0 * 1.0
buffer[7286] = -1.0 * 0.05
buffer[7290] = 1.0
buffer[7291] = -1.0 * 0.05
buffer[7386] = -1.0 * 1.0
buffer[7387] = -1.0 * (((self.gravity * self.cartMass * Double.pow(Double.sin(self.previousAngle[18]), 2) * 0.13333333333333333) / self.poleMass + (self.gravity * self.cartMass * Double.pow(Double.cos(self.previousAngle[18]), 2) * -0.13333333333333333) / self.poleMass + self.gravity * Double.pow(Double.cos(self.previousAngle[18]), 4) * 0.1 + self.gravity * Double.pow(Double.cos(self.previousAngle[18]), 2) * Double.pow(Double.sin(self.previousAngle[18]), 2) * 0.2 + self.gravity * Double.pow(Double.sin(self.previousAngle[18]), 2) * 0.13333333333333333 + self.gravity * Double.pow(Double.cos(self.previousAngle[18]), 2) * -0.13333333333333333 + self.gravity * Double.pow(Double.cos(self.previousAngle[18]), 2) * Double.pow(Double.sin(self.previousAngle[18]), 2) * -0.1) / Double.pow((-1.3333333333333333 * self.cartMass) / self.poleMass + Double.pow(Double.cos(self.previousAngle[18]), 2) + -1.3333333333333333, 2))
buffer[7388] = -1.0 * ((self.poleLength * Double.sin(self.previousAngle[18]) * -0.26666666666666666 * self.previousAngularVelocity[18]) / ((-1.3333333333333333 * self.cartMass) / self.poleMass + Double.pow(Double.cos(self.previousAngle[18]), 2) + -1.3333333333333333))
buffer[7389] = -1.0 * (-0.13333333333333333 / (-1.3333333333333333 * self.cartMass + self.poleMass * Double.pow(Double.cos(self.previousAngle[18]), 2) + -1.3333333333333333 * self.poleMass))
buffer[7391] = 1.0
buffer[7487] = -1.0 * 1.0
buffer[7488] = -1.0 * 0.05
buffer[7492] = 1.0
buffer[7493] = -1.0 * 0.05
buffer[7587] = -1.0 * ((Double.cos(self.previousAngle[18]) * self.gravity * self.poleLength * Double.pow(self.poleMass, 2) * 0.13333333333333333 + Double.cos(self.previousAngle[18]) * self.gravity * self.poleLength * Double.pow(self.poleMass, 2) * Double.pow(Double.sin(self.previousAngle[18]), 2) * -0.2 + self.gravity * self.poleLength * Double.pow(self.poleMass, 2) * Double.pow(Double.cos(self.previousAngle[18]), 3) * -0.1 + Double.cos(self.previousAngle[18]) * 0.13333333333333333 * self.gravity * self.poleLength * self.cartMass * self.poleMass) / Double.pow(1.3333333333333333 * self.poleLength * self.cartMass + 1.3333333333333333 * self.poleLength * self.poleMass + self.poleLength * self.poleMass * Double.pow(Double.cos(self.previousAngle[18]), 2) * -1.0, 2)) + -1.0 * ((Double.cos(self.previousAngle[18]) * self.gravity * self.poleLength * Double.pow(self.cartMass, 2) * 0.13333333333333333 + self.gravity * self.poleLength * self.cartMass * self.poleMass * Double.pow(Double.cos(self.previousAngle[18]), 3) * -0.1 + Double.cos(self.previousAngle[18]) * 0.13333333333333333 * self.gravity * self.poleLength * self.cartMass * self.poleMass + Double.cos(self.previousAngle[18]) * self.gravity * self.poleLength * self.cartMass * self.poleMass * Double.pow(Double.sin(self.previousAngle[18]), 2) * -0.2) / Double.pow(1.3333333333333333 * self.poleLength * self.cartMass + 1.3333333333333333 * self.poleLength * self.poleMass + self.poleLength * self.poleMass * Double.pow(Double.cos(self.previousAngle[18]), 2) * -1.0, 2))
buffer[7588] = -1.0 * 1.0 + -1.0 * ((Double.sin(self.previousAngle[18]) * -0.2 * self.previousAngularVelocity[18]) / ((1.3333333333333333 * self.cartMass) / self.poleMass + Double.cos(self.previousAngle[18]) * -1.0 + 1.3333333333333333))
buffer[7589] = -1.0 * (-0.1 / (1.3333333333333333 * self.poleLength * self.cartMass + 1.3333333333333333 * self.poleLength * self.poleMass + Double.cos(self.previousAngle[18]) * -1.0 * self.poleLength * self.poleMass))
buffer[7593] = 1.0
buffer[7690] = -1.0 * 1.0
buffer[7691] = -1.0 * 0.05
buffer[7695] = 1.0
buffer[7696] = -1.0 * 0.05
buffer[7791] = -1.0 * 1.0
buffer[7792] = -1.0 * (((self.gravity * self.cartMass * Double.pow(Double.sin(self.previousAngle[19]), 2) * 0.13333333333333333) / self.poleMass + (self.gravity * self.cartMass * Double.pow(Double.cos(self.previousAngle[19]), 2) * -0.13333333333333333) / self.poleMass + self.gravity * Double.pow(Double.cos(self.previousAngle[19]), 2) * -0.13333333333333333 + self.gravity * Double.pow(Double.sin(self.previousAngle[19]), 2) * Double.pow(Double.cos(self.previousAngle[19]), 2) * -0.1 + self.gravity * Double.pow(Double.sin(self.previousAngle[19]), 2) * Double.pow(Double.cos(self.previousAngle[19]), 2) * 0.2 + self.gravity * Double.pow(Double.sin(self.previousAngle[19]), 2) * 0.13333333333333333 + self.gravity * Double.pow(Double.cos(self.previousAngle[19]), 4) * 0.1) / Double.pow((-1.3333333333333333 * self.cartMass) / self.poleMass + Double.pow(Double.cos(self.previousAngle[19]), 2) + -1.3333333333333333, 2))
buffer[7793] = -1.0 * ((self.poleLength * Double.sin(self.previousAngle[19]) * -0.26666666666666666 * self.previousAngularVelocity[19]) / ((-1.3333333333333333 * self.cartMass) / self.poleMass + Double.pow(Double.cos(self.previousAngle[19]), 2) + -1.3333333333333333))
buffer[7794] = -1.0 * (-0.13333333333333333 / (-1.3333333333333333 * self.cartMass + self.poleMass * Double.pow(Double.cos(self.previousAngle[19]), 2) + -1.3333333333333333 * self.poleMass))
buffer[7796] = 1.0
buffer[7892] = -1.0 * 1.0
buffer[7893] = -1.0 * 0.05
buffer[7897] = 1.0
buffer[7898] = -1.0 * 0.05
buffer[7992] = -1.0 * ((self.gravity * self.poleLength * self.cartMass * self.poleMass * Double.pow(Double.cos(self.previousAngle[19]), 3) * -0.1 + Double.cos(self.previousAngle[19]) * self.gravity * self.poleLength * Double.pow(self.cartMass, 2) * 0.13333333333333333 + Double.cos(self.previousAngle[19]) * self.gravity * self.poleLength * self.cartMass * self.poleMass * Double.pow(Double.sin(self.previousAngle[19]), 2) * -0.2 + Double.cos(self.previousAngle[19]) * 0.13333333333333333 * self.gravity * self.poleLength * self.cartMass * self.poleMass) / Double.pow(self.poleLength * self.poleMass * Double.pow(Double.cos(self.previousAngle[19]), 2) * -1.0 + 1.3333333333333333 * self.poleLength * self.cartMass + 1.3333333333333333 * self.poleLength * self.poleMass, 2)) + -1.0 * ((Double.cos(self.previousAngle[19]) * self.gravity * self.poleLength * Double.pow(Double.sin(self.previousAngle[19]), 2) * Double.pow(self.poleMass, 2) * -0.2 + self.gravity * self.poleLength * Double.pow(self.poleMass, 2) * Double.pow(Double.cos(self.previousAngle[19]), 3) * -0.1 + Double.cos(self.previousAngle[19]) * 0.13333333333333333 * self.gravity * self.poleLength * self.cartMass * self.poleMass + Double.cos(self.previousAngle[19]) * self.gravity * self.poleLength * Double.pow(self.poleMass, 2) * 0.13333333333333333) / Double.pow(self.poleLength * self.poleMass * Double.pow(Double.cos(self.previousAngle[19]), 2) * -1.0 + 1.3333333333333333 * self.poleLength * self.cartMass + 1.3333333333333333 * self.poleLength * self.poleMass, 2))
buffer[7993] = -1.0 * 1.0 + -1.0 * ((Double.sin(self.previousAngle[19]) * -0.2 * self.previousAngularVelocity[19]) / ((1.3333333333333333 * self.cartMass) / self.poleMass + Double.cos(self.previousAngle[19]) * -1.0 + 1.3333333333333333))
buffer[7994] = -1.0 * (-0.1 / (1.3333333333333333 * self.poleLength * self.cartMass + 1.3333333333333333 * self.poleLength * self.poleMass + Double.cos(self.previousAngle[19]) * -1.0 * self.poleLength * self.poleMass))
buffer[7998] = 1.0
})
return Matrix(80, 100, flat)
}

//=================== Equality Vector Constraint ===================
var equalityConstraintVector: Vector? {
var flat: Vector = zeros(80)
flat.withUnsafeMutableBufferPointer({ buffer in
buffer[0] = -1.0 * (-1.0 * self.initialPosition)
buffer[1] = -1.0 * (-1.0 * self.initialVelocity)
buffer[2] = -1.0 * (-1.0 * self.initialAngle)
buffer[3] = -1.0 * (-1.0 * self.initialAngularVelocity)
buffer[4] = -1.0 * 0.0
buffer[5] = -1.0 * (-1.0 * ((Double.cos(self.previousAngle[1]) * self.gravity * Double.sin(self.previousAngle[1]) * 0.1) / ((-1.3333333333333333 * self.cartMass) / self.poleMass + Double.pow(Double.cos(self.previousAngle[1]), 2) + -1.3333333333333333)) + -1.0 * (((self.gravity * self.cartMass * Double.pow(Double.cos(self.previousAngle[1]), 2) * 0.13333333333333333 * self.previousAngle[1]) / self.poleMass + (self.gravity * self.cartMass * Double.pow(Double.sin(self.previousAngle[1]), 2) * -0.13333333333333333 * self.previousAngle[1]) / self.poleMass + self.gravity * Double.pow(Double.sin(self.previousAngle[1]), 2) * -0.13333333333333333 * self.previousAngle[1] + self.gravity * Double.pow(Double.cos(self.previousAngle[1]), 2) * 0.13333333333333333 * self.previousAngle[1] + self.gravity * Double.pow(Double.cos(self.previousAngle[1]), 4) * -0.1 * self.previousAngle[1] + self.gravity * Double.pow(Double.sin(self.previousAngle[1]), 2) * Double.pow(Double.cos(self.previousAngle[1]), 2) * -0.2 * self.previousAngle[1] + self.gravity * Double.pow(Double.sin(self.previousAngle[1]), 2) * Double.pow(Double.cos(self.previousAngle[1]), 2) * 0.1 * self.previousAngle[1]) / Double.pow((-1.3333333333333333 * self.cartMass) / self.poleMass + Double.pow(Double.cos(self.previousAngle[1]), 2) + -1.3333333333333333, 2)) + -1.0 * ((self.poleLength * Double.pow(self.previousAngularVelocity[1], 2) * Double.sin(self.previousAngle[1]) * -0.13333333333333333) / ((-1.3333333333333333 * self.cartMass) / self.poleMass + Double.pow(Double.cos(self.previousAngle[1]), 2) + -1.3333333333333333)) + -1.0 * ((self.poleLength * Double.pow(self.previousAngularVelocity[1], 2) * Double.sin(self.previousAngle[1]) * 0.26666666666666666) / ((-1.3333333333333333 * self.cartMass) / self.poleMass + Double.pow(Double.cos(self.previousAngle[1]), 2) + -1.3333333333333333)))
buffer[6] = -1.0 * 0.0
buffer[7] = -1.0 * (-1.0 * ((Double.pow(self.previousAngularVelocity[1], 2) * Double.sin(self.previousAngle[1]) * 0.2) / ((1.3333333333333333 * self.cartMass) / self.poleMass + Double.cos(self.previousAngle[1]) * -1.0 + 1.3333333333333333)) + -1.0 * ((self.gravity * self.cartMass * Double.sin(self.previousAngle[1]) * 0.1) / (1.3333333333333333 * self.poleLength * self.cartMass + 1.3333333333333333 * self.poleLength * self.poleMass + self.poleLength * self.poleMass * Double.pow(Double.cos(self.previousAngle[1]), 2) * -1.0)) + -1.0 * ((Double.pow(self.previousAngularVelocity[1], 2) * Double.sin(self.previousAngle[1]) * -0.1) / ((1.3333333333333333 * self.cartMass) / self.poleMass + Double.cos(self.previousAngle[1]) * -1.0 + 1.3333333333333333)) + -1.0 * ((Double.cos(self.previousAngle[1]) * self.gravity * self.poleLength * self.cartMass * self.poleMass * Double.pow(Double.sin(self.previousAngle[1]), 2) * 0.2 * self.previousAngle[1] + self.gravity * self.poleLength * self.cartMass * self.poleMass * Double.pow(Double.cos(self.previousAngle[1]), 3) * 0.1 * self.previousAngle[1] + Double.cos(self.previousAngle[1]) * -0.13333333333333333 * self.gravity * self.poleLength * self.cartMass * self.poleMass * self.previousAngle[1] + Double.cos(self.previousAngle[1]) * self.gravity * self.poleLength * Double.pow(self.cartMass, 2) * -0.13333333333333333 * self.previousAngle[1]) / Double.pow(1.3333333333333333 * self.poleLength * self.cartMass + 1.3333333333333333 * self.poleLength * self.poleMass + self.poleLength * self.poleMass * Double.pow(Double.cos(self.previousAngle[1]), 2) * -1.0, 2)) + -1.0 * ((self.gravity * self.poleLength * Double.pow(self.poleMass, 2) * Double.pow(Double.cos(self.previousAngle[1]), 3) * 0.1 * self.previousAngle[1] + Double.cos(self.previousAngle[1]) * self.gravity * self.poleLength * Double.pow(self.poleMass, 2) * -0.13333333333333333 * self.previousAngle[1] + Double.cos(self.previousAngle[1]) * -0.13333333333333333 * self.gravity * self.poleLength * self.cartMass * self.poleMass * self.previousAngle[1] + Double.cos(self.previousAngle[1]) * self.gravity * self.poleLength * Double.pow(self.poleMass, 2) * Double.pow(Double.sin(self.previousAngle[1]), 2) * 0.2 * self.previousAngle[1]) / Double.pow(1.3333333333333333 * self.poleLength * self.cartMass + 1.3333333333333333 * self.poleLength * self.poleMass + self.poleLength * self.poleMass * Double.pow(Double.cos(self.previousAngle[1]), 2) * -1.0, 2)) + -1.0 * ((self.gravity * self.poleMass * Double.sin(self.previousAngle[1]) * 0.1) / (1.3333333333333333 * self.poleLength * self.cartMass + 1.3333333333333333 * self.poleLength * self.poleMass + self.poleLength * self.poleMass * Double.pow(Double.cos(self.previousAngle[1]), 2) * -1.0)))
buffer[8] = -1.0 * 0.0
buffer[9] = -1.0 * (-1.0 * ((Double.cos(self.previousAngle[2]) * self.gravity * Double.sin(self.previousAngle[2]) * 0.1) / ((-1.3333333333333333 * self.cartMass) / self.poleMass + Double.pow(Double.cos(self.previousAngle[2]), 2) + -1.3333333333333333)) + -1.0 * ((self.poleLength * Double.pow(self.previousAngularVelocity[2], 2) * Double.sin(self.previousAngle[2]) * -0.13333333333333333) / ((-1.3333333333333333 * self.cartMass) / self.poleMass + Double.pow(Double.cos(self.previousAngle[2]), 2) + -1.3333333333333333)) + -1.0 * (((self.gravity * self.cartMass * Double.pow(Double.sin(self.previousAngle[2]), 2) * -0.13333333333333333 * self.previousAngle[2]) / self.poleMass + (self.gravity * self.cartMass * Double.pow(Double.cos(self.previousAngle[2]), 2) * 0.13333333333333333 * self.previousAngle[2]) / self.poleMass + self.gravity * Double.pow(Double.cos(self.previousAngle[2]), 2) * 0.13333333333333333 * self.previousAngle[2] + self.gravity * Double.pow(Double.cos(self.previousAngle[2]), 2) * Double.pow(Double.sin(self.previousAngle[2]), 2) * -0.2 * self.previousAngle[2] + self.gravity * Double.pow(Double.cos(self.previousAngle[2]), 4) * -0.1 * self.previousAngle[2] + self.gravity * Double.pow(Double.cos(self.previousAngle[2]), 2) * Double.pow(Double.sin(self.previousAngle[2]), 2) * 0.1 * self.previousAngle[2] + self.gravity * Double.pow(Double.sin(self.previousAngle[2]), 2) * -0.13333333333333333 * self.previousAngle[2]) / Double.pow((-1.3333333333333333 * self.cartMass) / self.poleMass + Double.pow(Double.cos(self.previousAngle[2]), 2) + -1.3333333333333333, 2)) + -1.0 * ((self.poleLength * Double.pow(self.previousAngularVelocity[2], 2) * Double.sin(self.previousAngle[2]) * 0.26666666666666666) / ((-1.3333333333333333 * self.cartMass) / self.poleMass + Double.pow(Double.cos(self.previousAngle[2]), 2) + -1.3333333333333333)))
buffer[10] = -1.0 * 0.0
buffer[11] = -1.0 * (-1.0 * ((self.gravity * self.cartMass * Double.sin(self.previousAngle[2]) * 0.1) / (1.3333333333333333 * self.poleLength * self.cartMass + 1.3333333333333333 * self.poleLength * self.poleMass + self.poleLength * self.poleMass * Double.pow(Double.cos(self.previousAngle[2]), 2) * -1.0)) + -1.0 * ((Double.cos(self.previousAngle[2]) * self.gravity * self.poleLength * Double.pow(self.cartMass, 2) * -0.13333333333333333 * self.previousAngle[2] + Double.cos(self.previousAngle[2]) * -0.13333333333333333 * self.gravity * self.poleLength * self.cartMass * self.poleMass * self.previousAngle[2] + self.gravity * self.poleLength * self.cartMass * self.poleMass * Double.pow(Double.cos(self.previousAngle[2]), 3) * 0.1 * self.previousAngle[2] + Double.cos(self.previousAngle[2]) * self.gravity * self.poleLength * self.cartMass * self.poleMass * Double.pow(Double.sin(self.previousAngle[2]), 2) * 0.2 * self.previousAngle[2]) / Double.pow(1.3333333333333333 * self.poleLength * self.cartMass + 1.3333333333333333 * self.poleLength * self.poleMass + self.poleLength * self.poleMass * Double.pow(Double.cos(self.previousAngle[2]), 2) * -1.0, 2)) + -1.0 * ((Double.cos(self.previousAngle[2]) * self.gravity * self.poleLength * Double.pow(self.poleMass, 2) * -0.13333333333333333 * self.previousAngle[2] + Double.cos(self.previousAngle[2]) * -0.13333333333333333 * self.gravity * self.poleLength * self.cartMass * self.poleMass * self.previousAngle[2] + self.gravity * self.poleLength * Double.pow(self.poleMass, 2) * Double.pow(Double.cos(self.previousAngle[2]), 3) * 0.1 * self.previousAngle[2] + Double.cos(self.previousAngle[2]) * self.gravity * self.poleLength * Double.pow(self.poleMass, 2) * Double.pow(Double.sin(self.previousAngle[2]), 2) * 0.2 * self.previousAngle[2]) / Double.pow(1.3333333333333333 * self.poleLength * self.cartMass + 1.3333333333333333 * self.poleLength * self.poleMass + self.poleLength * self.poleMass * Double.pow(Double.cos(self.previousAngle[2]), 2) * -1.0, 2)) + -1.0 * ((Double.pow(self.previousAngularVelocity[2], 2) * Double.sin(self.previousAngle[2]) * 0.2) / ((1.3333333333333333 * self.cartMass) / self.poleMass + Double.cos(self.previousAngle[2]) * -1.0 + 1.3333333333333333)) + -1.0 * ((Double.pow(self.previousAngularVelocity[2], 2) * Double.sin(self.previousAngle[2]) * -0.1) / ((1.3333333333333333 * self.cartMass) / self.poleMass + Double.cos(self.previousAngle[2]) * -1.0 + 1.3333333333333333)) + -1.0 * ((self.gravity * self.poleMass * Double.sin(self.previousAngle[2]) * 0.1) / (1.3333333333333333 * self.poleLength * self.cartMass + 1.3333333333333333 * self.poleLength * self.poleMass + self.poleLength * self.poleMass * Double.pow(Double.cos(self.previousAngle[2]), 2) * -1.0)))
buffer[12] = -1.0 * 0.0
buffer[13] = -1.0 * (-1.0 * ((self.poleLength * Double.pow(self.previousAngularVelocity[3], 2) * Double.sin(self.previousAngle[3]) * 0.26666666666666666) / ((-1.3333333333333333 * self.cartMass) / self.poleMass + Double.pow(Double.cos(self.previousAngle[3]), 2) + -1.3333333333333333)) + -1.0 * (((self.gravity * self.cartMass * Double.pow(Double.sin(self.previousAngle[3]), 2) * -0.13333333333333333 * self.previousAngle[3]) / self.poleMass + (self.gravity * self.cartMass * Double.pow(Double.cos(self.previousAngle[3]), 2) * 0.13333333333333333 * self.previousAngle[3]) / self.poleMass + self.gravity * Double.pow(Double.sin(self.previousAngle[3]), 2) * Double.pow(Double.cos(self.previousAngle[3]), 2) * 0.1 * self.previousAngle[3] + self.gravity * Double.pow(Double.sin(self.previousAngle[3]), 2) * -0.13333333333333333 * self.previousAngle[3] + self.gravity * Double.pow(Double.sin(self.previousAngle[3]), 2) * Double.pow(Double.cos(self.previousAngle[3]), 2) * -0.2 * self.previousAngle[3] + self.gravity * Double.pow(Double.cos(self.previousAngle[3]), 4) * -0.1 * self.previousAngle[3] + self.gravity * Double.pow(Double.cos(self.previousAngle[3]), 2) * 0.13333333333333333 * self.previousAngle[3]) / Double.pow((-1.3333333333333333 * self.cartMass) / self.poleMass + Double.pow(Double.cos(self.previousAngle[3]), 2) + -1.3333333333333333, 2)) + -1.0 * ((self.poleLength * Double.pow(self.previousAngularVelocity[3], 2) * Double.sin(self.previousAngle[3]) * -0.13333333333333333) / ((-1.3333333333333333 * self.cartMass) / self.poleMass + Double.pow(Double.cos(self.previousAngle[3]), 2) + -1.3333333333333333)) + -1.0 * ((Double.cos(self.previousAngle[3]) * self.gravity * Double.sin(self.previousAngle[3]) * 0.1) / ((-1.3333333333333333 * self.cartMass) / self.poleMass + Double.pow(Double.cos(self.previousAngle[3]), 2) + -1.3333333333333333)))
buffer[14] = -1.0 * 0.0
buffer[15] = -1.0 * (-1.0 * ((Double.pow(self.previousAngularVelocity[3], 2) * Double.sin(self.previousAngle[3]) * -0.1) / ((1.3333333333333333 * self.cartMass) / self.poleMass + Double.cos(self.previousAngle[3]) * -1.0 + 1.3333333333333333)) + -1.0 * ((self.gravity * self.poleMass * Double.sin(self.previousAngle[3]) * 0.1) / (1.3333333333333333 * self.poleLength * self.cartMass + 1.3333333333333333 * self.poleLength * self.poleMass + self.poleLength * self.poleMass * Double.pow(Double.cos(self.previousAngle[3]), 2) * -1.0)) + -1.0 * ((Double.pow(self.previousAngularVelocity[3], 2) * Double.sin(self.previousAngle[3]) * 0.2) / ((1.3333333333333333 * self.cartMass) / self.poleMass + Double.cos(self.previousAngle[3]) * -1.0 + 1.3333333333333333)) + -1.0 * ((Double.cos(self.previousAngle[3]) * -0.13333333333333333 * self.gravity * self.poleLength * self.cartMass * self.poleMass * self.previousAngle[3] + Double.cos(self.previousAngle[3]) * self.gravity * self.poleLength * self.cartMass * self.poleMass * Double.pow(Double.sin(self.previousAngle[3]), 2) * 0.2 * self.previousAngle[3] + Double.cos(self.previousAngle[3]) * self.gravity * self.poleLength * Double.pow(self.cartMass, 2) * -0.13333333333333333 * self.previousAngle[3] + self.gravity * self.poleLength * self.cartMass * self.poleMass * Double.pow(Double.cos(self.previousAngle[3]), 3) * 0.1 * self.previousAngle[3]) / Double.pow(1.3333333333333333 * self.poleLength * self.cartMass + 1.3333333333333333 * self.poleLength * self.poleMass + self.poleLength * self.poleMass * Double.pow(Double.cos(self.previousAngle[3]), 2) * -1.0, 2)) + -1.0 * ((self.gravity * self.cartMass * Double.sin(self.previousAngle[3]) * 0.1) / (1.3333333333333333 * self.poleLength * self.cartMass + 1.3333333333333333 * self.poleLength * self.poleMass + self.poleLength * self.poleMass * Double.pow(Double.cos(self.previousAngle[3]), 2) * -1.0)) + -1.0 * ((Double.cos(self.previousAngle[3]) * -0.13333333333333333 * self.gravity * self.poleLength * self.cartMass * self.poleMass * self.previousAngle[3] + Double.cos(self.previousAngle[3]) * self.gravity * self.poleLength * Double.pow(self.poleMass, 2) * -0.13333333333333333 * self.previousAngle[3] + self.gravity * self.poleLength * Double.pow(Double.cos(self.previousAngle[3]), 3) * Double.pow(self.poleMass, 2) * 0.1 * self.previousAngle[3] + Double.cos(self.previousAngle[3]) * self.gravity * self.poleLength * Double.pow(self.poleMass, 2) * Double.pow(Double.sin(self.previousAngle[3]), 2) * 0.2 * self.previousAngle[3]) / Double.pow(1.3333333333333333 * self.poleLength * self.cartMass + 1.3333333333333333 * self.poleLength * self.poleMass + self.poleLength * self.poleMass * Double.pow(Double.cos(self.previousAngle[3]), 2) * -1.0, 2)))
buffer[16] = -1.0 * 0.0
buffer[17] = -1.0 * (-1.0 * ((self.poleLength * Double.pow(self.previousAngularVelocity[4], 2) * Double.sin(self.previousAngle[4]) * 0.26666666666666666) / ((-1.3333333333333333 * self.cartMass) / self.poleMass + Double.pow(Double.cos(self.previousAngle[4]), 2) + -1.3333333333333333)) + -1.0 * (((self.gravity * self.cartMass * Double.pow(Double.sin(self.previousAngle[4]), 2) * -0.13333333333333333 * self.previousAngle[4]) / self.poleMass + (self.gravity * self.cartMass * Double.pow(Double.cos(self.previousAngle[4]), 2) * 0.13333333333333333 * self.previousAngle[4]) / self.poleMass + self.gravity * Double.pow(Double.cos(self.previousAngle[4]), 4) * -0.1 * self.previousAngle[4] + self.gravity * Double.pow(Double.sin(self.previousAngle[4]), 2) * -0.13333333333333333 * self.previousAngle[4] + self.gravity * Double.pow(Double.sin(self.previousAngle[4]), 2) * Double.pow(Double.cos(self.previousAngle[4]), 2) * -0.2 * self.previousAngle[4] + self.gravity * Double.pow(Double.sin(self.previousAngle[4]), 2) * Double.pow(Double.cos(self.previousAngle[4]), 2) * 0.1 * self.previousAngle[4] + self.gravity * Double.pow(Double.cos(self.previousAngle[4]), 2) * 0.13333333333333333 * self.previousAngle[4]) / Double.pow((-1.3333333333333333 * self.cartMass) / self.poleMass + Double.pow(Double.cos(self.previousAngle[4]), 2) + -1.3333333333333333, 2)) + -1.0 * ((self.poleLength * Double.pow(self.previousAngularVelocity[4], 2) * Double.sin(self.previousAngle[4]) * -0.13333333333333333) / ((-1.3333333333333333 * self.cartMass) / self.poleMass + Double.pow(Double.cos(self.previousAngle[4]), 2) + -1.3333333333333333)) + -1.0 * ((Double.cos(self.previousAngle[4]) * self.gravity * Double.sin(self.previousAngle[4]) * 0.1) / ((-1.3333333333333333 * self.cartMass) / self.poleMass + Double.pow(Double.cos(self.previousAngle[4]), 2) + -1.3333333333333333)))
buffer[18] = -1.0 * 0.0
buffer[19] = -1.0 * (-1.0 * ((Double.pow(self.previousAngularVelocity[4], 2) * Double.sin(self.previousAngle[4]) * 0.2) / ((1.3333333333333333 * self.cartMass) / self.poleMass + Double.cos(self.previousAngle[4]) * -1.0 + 1.3333333333333333)) + -1.0 * ((self.gravity * self.poleLength * Double.pow(self.poleMass, 2) * Double.pow(Double.cos(self.previousAngle[4]), 3) * 0.1 * self.previousAngle[4] + Double.cos(self.previousAngle[4]) * self.gravity * self.poleLength * Double.pow(self.poleMass, 2) * Double.pow(Double.sin(self.previousAngle[4]), 2) * 0.2 * self.previousAngle[4] + Double.cos(self.previousAngle[4]) * -0.13333333333333333 * self.gravity * self.poleLength * self.cartMass * self.poleMass * self.previousAngle[4] + Double.cos(self.previousAngle[4]) * self.gravity * self.poleLength * Double.pow(self.poleMass, 2) * -0.13333333333333333 * self.previousAngle[4]) / Double.pow(1.3333333333333333 * self.poleLength * self.cartMass + 1.3333333333333333 * self.poleLength * self.poleMass + self.poleLength * self.poleMass * Double.pow(Double.cos(self.previousAngle[4]), 2) * -1.0, 2)) + -1.0 * ((self.gravity * self.cartMass * Double.sin(self.previousAngle[4]) * 0.1) / (1.3333333333333333 * self.poleLength * self.cartMass + 1.3333333333333333 * self.poleLength * self.poleMass + self.poleLength * self.poleMass * Double.pow(Double.cos(self.previousAngle[4]), 2) * -1.0)) + -1.0 * ((self.gravity * self.poleMass * Double.sin(self.previousAngle[4]) * 0.1) / (1.3333333333333333 * self.poleLength * self.cartMass + 1.3333333333333333 * self.poleLength * self.poleMass + self.poleLength * self.poleMass * Double.pow(Double.cos(self.previousAngle[4]), 2) * -1.0)) + -1.0 * ((Double.pow(self.previousAngularVelocity[4], 2) * Double.sin(self.previousAngle[4]) * -0.1) / ((1.3333333333333333 * self.cartMass) / self.poleMass + Double.cos(self.previousAngle[4]) * -1.0 + 1.3333333333333333)) + -1.0 * ((Double.cos(self.previousAngle[4]) * self.gravity * self.poleLength * Double.pow(self.cartMass, 2) * -0.13333333333333333 * self.previousAngle[4] + Double.cos(self.previousAngle[4]) * self.gravity * self.poleLength * self.cartMass * self.poleMass * Double.pow(Double.sin(self.previousAngle[4]), 2) * 0.2 * self.previousAngle[4] + self.gravity * self.poleLength * self.cartMass * self.poleMass * Double.pow(Double.cos(self.previousAngle[4]), 3) * 0.1 * self.previousAngle[4] + Double.cos(self.previousAngle[4]) * -0.13333333333333333 * self.gravity * self.poleLength * self.cartMass * self.poleMass * self.previousAngle[4]) / Double.pow(1.3333333333333333 * self.poleLength * self.cartMass + 1.3333333333333333 * self.poleLength * self.poleMass + self.poleLength * self.poleMass * Double.pow(Double.cos(self.previousAngle[4]), 2) * -1.0, 2)))
buffer[20] = -1.0 * 0.0
buffer[21] = -1.0 * (-1.0 * ((Double.cos(self.previousAngle[5]) * self.gravity * Double.sin(self.previousAngle[5]) * 0.1) / ((-1.3333333333333333 * self.cartMass) / self.poleMass + Double.pow(Double.cos(self.previousAngle[5]), 2) + -1.3333333333333333)) + -1.0 * (((self.gravity * self.cartMass * Double.pow(Double.sin(self.previousAngle[5]), 2) * -0.13333333333333333 * self.previousAngle[5]) / self.poleMass + (self.gravity * self.cartMass * Double.pow(Double.cos(self.previousAngle[5]), 2) * 0.13333333333333333 * self.previousAngle[5]) / self.poleMass + self.gravity * Double.pow(Double.sin(self.previousAngle[5]), 2) * -0.13333333333333333 * self.previousAngle[5] + self.gravity * Double.pow(Double.cos(self.previousAngle[5]), 2) * Double.pow(Double.sin(self.previousAngle[5]), 2) * 0.1 * self.previousAngle[5] + self.gravity * Double.pow(Double.cos(self.previousAngle[5]), 4) * -0.1 * self.previousAngle[5] + self.gravity * Double.pow(Double.cos(self.previousAngle[5]), 2) * Double.pow(Double.sin(self.previousAngle[5]), 2) * -0.2 * self.previousAngle[5] + self.gravity * Double.pow(Double.cos(self.previousAngle[5]), 2) * 0.13333333333333333 * self.previousAngle[5]) / Double.pow((-1.3333333333333333 * self.cartMass) / self.poleMass + Double.pow(Double.cos(self.previousAngle[5]), 2) + -1.3333333333333333, 2)) + -1.0 * ((self.poleLength * Double.pow(self.previousAngularVelocity[5], 2) * Double.sin(self.previousAngle[5]) * -0.13333333333333333) / ((-1.3333333333333333 * self.cartMass) / self.poleMass + Double.pow(Double.cos(self.previousAngle[5]), 2) + -1.3333333333333333)) + -1.0 * ((self.poleLength * Double.pow(self.previousAngularVelocity[5], 2) * Double.sin(self.previousAngle[5]) * 0.26666666666666666) / ((-1.3333333333333333 * self.cartMass) / self.poleMass + Double.pow(Double.cos(self.previousAngle[5]), 2) + -1.3333333333333333)))
buffer[22] = -1.0 * 0.0
buffer[23] = -1.0 * (-1.0 * ((self.gravity * self.cartMass * Double.sin(self.previousAngle[5]) * 0.1) / (1.3333333333333333 * self.poleLength * self.cartMass + 1.3333333333333333 * self.poleLength * self.poleMass + self.poleLength * self.poleMass * Double.pow(Double.cos(self.previousAngle[5]), 2) * -1.0)) + -1.0 * ((Double.pow(self.previousAngularVelocity[5], 2) * Double.sin(self.previousAngle[5]) * 0.2) / ((1.3333333333333333 * self.cartMass) / self.poleMass + Double.cos(self.previousAngle[5]) * -1.0 + 1.3333333333333333)) + -1.0 * ((self.gravity * self.poleLength * Double.pow(Double.cos(self.previousAngle[5]), 3) * Double.pow(self.poleMass, 2) * 0.1 * self.previousAngle[5] + Double.cos(self.previousAngle[5]) * -0.13333333333333333 * self.gravity * self.poleLength * self.cartMass * self.poleMass * self.previousAngle[5] + Double.cos(self.previousAngle[5]) * self.gravity * self.poleLength * Double.pow(self.poleMass, 2) * -0.13333333333333333 * self.previousAngle[5] + Double.cos(self.previousAngle[5]) * self.gravity * self.poleLength * Double.pow(self.poleMass, 2) * Double.pow(Double.sin(self.previousAngle[5]), 2) * 0.2 * self.previousAngle[5]) / Double.pow(1.3333333333333333 * self.poleLength * self.cartMass + 1.3333333333333333 * self.poleLength * self.poleMass + self.poleLength * self.poleMass * Double.pow(Double.cos(self.previousAngle[5]), 2) * -1.0, 2)) + -1.0 * ((self.gravity * self.poleMass * Double.sin(self.previousAngle[5]) * 0.1) / (1.3333333333333333 * self.poleLength * self.cartMass + 1.3333333333333333 * self.poleLength * self.poleMass + self.poleLength * self.poleMass * Double.pow(Double.cos(self.previousAngle[5]), 2) * -1.0)) + -1.0 * ((Double.cos(self.previousAngle[5]) * self.gravity * self.poleLength * self.cartMass * self.poleMass * Double.pow(Double.sin(self.previousAngle[5]), 2) * 0.2 * self.previousAngle[5] + Double.cos(self.previousAngle[5]) * -0.13333333333333333 * self.gravity * self.poleLength * self.cartMass * self.poleMass * self.previousAngle[5] + Double.cos(self.previousAngle[5]) * self.gravity * self.poleLength * Double.pow(self.cartMass, 2) * -0.13333333333333333 * self.previousAngle[5] + self.gravity * self.poleLength * self.cartMass * self.poleMass * Double.pow(Double.cos(self.previousAngle[5]), 3) * 0.1 * self.previousAngle[5]) / Double.pow(1.3333333333333333 * self.poleLength * self.cartMass + 1.3333333333333333 * self.poleLength * self.poleMass + self.poleLength * self.poleMass * Double.pow(Double.cos(self.previousAngle[5]), 2) * -1.0, 2)) + -1.0 * ((Double.pow(self.previousAngularVelocity[5], 2) * Double.sin(self.previousAngle[5]) * -0.1) / ((1.3333333333333333 * self.cartMass) / self.poleMass + Double.cos(self.previousAngle[5]) * -1.0 + 1.3333333333333333)))
buffer[24] = -1.0 * 0.0
buffer[25] = -1.0 * (-1.0 * ((self.poleLength * Double.pow(self.previousAngularVelocity[6], 2) * Double.sin(self.previousAngle[6]) * 0.26666666666666666) / ((-1.3333333333333333 * self.cartMass) / self.poleMass + Double.pow(Double.cos(self.previousAngle[6]), 2) + -1.3333333333333333)) + -1.0 * ((Double.cos(self.previousAngle[6]) * self.gravity * Double.sin(self.previousAngle[6]) * 0.1) / ((-1.3333333333333333 * self.cartMass) / self.poleMass + Double.pow(Double.cos(self.previousAngle[6]), 2) + -1.3333333333333333)) + -1.0 * (((self.gravity * self.cartMass * Double.pow(Double.cos(self.previousAngle[6]), 2) * 0.13333333333333333 * self.previousAngle[6]) / self.poleMass + (self.gravity * self.cartMass * Double.pow(Double.sin(self.previousAngle[6]), 2) * -0.13333333333333333 * self.previousAngle[6]) / self.poleMass + self.gravity * Double.pow(Double.cos(self.previousAngle[6]), 2) * 0.13333333333333333 * self.previousAngle[6] + self.gravity * Double.pow(Double.sin(self.previousAngle[6]), 2) * Double.pow(Double.cos(self.previousAngle[6]), 2) * -0.2 * self.previousAngle[6] + self.gravity * Double.pow(Double.sin(self.previousAngle[6]), 2) * -0.13333333333333333 * self.previousAngle[6] + self.gravity * Double.pow(Double.sin(self.previousAngle[6]), 2) * Double.pow(Double.cos(self.previousAngle[6]), 2) * 0.1 * self.previousAngle[6] + self.gravity * Double.pow(Double.cos(self.previousAngle[6]), 4) * -0.1 * self.previousAngle[6]) / Double.pow((-1.3333333333333333 * self.cartMass) / self.poleMass + Double.pow(Double.cos(self.previousAngle[6]), 2) + -1.3333333333333333, 2)) + -1.0 * ((self.poleLength * Double.pow(self.previousAngularVelocity[6], 2) * Double.sin(self.previousAngle[6]) * -0.13333333333333333) / ((-1.3333333333333333 * self.cartMass) / self.poleMass + Double.pow(Double.cos(self.previousAngle[6]), 2) + -1.3333333333333333)))
buffer[26] = -1.0 * 0.0
buffer[27] = -1.0 * (-1.0 * ((self.gravity * self.cartMass * Double.sin(self.previousAngle[6]) * 0.1) / (1.3333333333333333 * self.poleLength * self.cartMass + 1.3333333333333333 * self.poleLength * self.poleMass + self.poleLength * self.poleMass * Double.pow(Double.cos(self.previousAngle[6]), 2) * -1.0)) + -1.0 * ((Double.pow(self.previousAngularVelocity[6], 2) * Double.sin(self.previousAngle[6]) * -0.1) / ((1.3333333333333333 * self.cartMass) / self.poleMass + Double.cos(self.previousAngle[6]) * -1.0 + 1.3333333333333333)) + -1.0 * ((self.gravity * self.poleLength * self.cartMass * self.poleMass * Double.pow(Double.cos(self.previousAngle[6]), 3) * 0.1 * self.previousAngle[6] + Double.cos(self.previousAngle[6]) * -0.13333333333333333 * self.gravity * self.poleLength * self.cartMass * self.poleMass * self.previousAngle[6] + Double.cos(self.previousAngle[6]) * self.gravity * self.poleLength * Double.pow(self.cartMass, 2) * -0.13333333333333333 * self.previousAngle[6] + Double.cos(self.previousAngle[6]) * self.gravity * self.poleLength * self.cartMass * self.poleMass * Double.pow(Double.sin(self.previousAngle[6]), 2) * 0.2 * self.previousAngle[6]) / Double.pow(1.3333333333333333 * self.poleLength * self.cartMass + 1.3333333333333333 * self.poleLength * self.poleMass + self.poleLength * self.poleMass * Double.pow(Double.cos(self.previousAngle[6]), 2) * -1.0, 2)) + -1.0 * ((self.gravity * self.poleMass * Double.sin(self.previousAngle[6]) * 0.1) / (1.3333333333333333 * self.poleLength * self.cartMass + 1.3333333333333333 * self.poleLength * self.poleMass + self.poleLength * self.poleMass * Double.pow(Double.cos(self.previousAngle[6]), 2) * -1.0)) + -1.0 * ((self.gravity * self.poleLength * Double.pow(self.poleMass, 2) * Double.pow(Double.cos(self.previousAngle[6]), 3) * 0.1 * self.previousAngle[6] + Double.cos(self.previousAngle[6]) * -0.13333333333333333 * self.gravity * self.poleLength * self.cartMass * self.poleMass * self.previousAngle[6] + Double.cos(self.previousAngle[6]) * self.gravity * self.poleLength * Double.pow(Double.sin(self.previousAngle[6]), 2) * Double.pow(self.poleMass, 2) * 0.2 * self.previousAngle[6] + Double.cos(self.previousAngle[6]) * self.gravity * self.poleLength * Double.pow(self.poleMass, 2) * -0.13333333333333333 * self.previousAngle[6]) / Double.pow(1.3333333333333333 * self.poleLength * self.cartMass + 1.3333333333333333 * self.poleLength * self.poleMass + self.poleLength * self.poleMass * Double.pow(Double.cos(self.previousAngle[6]), 2) * -1.0, 2)) + -1.0 * ((Double.pow(self.previousAngularVelocity[6], 2) * Double.sin(self.previousAngle[6]) * 0.2) / ((1.3333333333333333 * self.cartMass) / self.poleMass + Double.cos(self.previousAngle[6]) * -1.0 + 1.3333333333333333)))
buffer[28] = -1.0 * 0.0
buffer[29] = -1.0 * (-1.0 * (((self.gravity * self.cartMass * Double.pow(Double.sin(self.previousAngle[7]), 2) * -0.13333333333333333 * self.previousAngle[7]) / self.poleMass + (self.gravity * self.cartMass * Double.pow(Double.cos(self.previousAngle[7]), 2) * 0.13333333333333333 * self.previousAngle[7]) / self.poleMass + self.gravity * Double.pow(Double.sin(self.previousAngle[7]), 2) * -0.13333333333333333 * self.previousAngle[7] + self.gravity * Double.pow(Double.cos(self.previousAngle[7]), 2) * Double.pow(Double.sin(self.previousAngle[7]), 2) * -0.2 * self.previousAngle[7] + self.gravity * Double.pow(Double.cos(self.previousAngle[7]), 4) * -0.1 * self.previousAngle[7] + self.gravity * Double.pow(Double.cos(self.previousAngle[7]), 2) * Double.pow(Double.sin(self.previousAngle[7]), 2) * 0.1 * self.previousAngle[7] + self.gravity * Double.pow(Double.cos(self.previousAngle[7]), 2) * 0.13333333333333333 * self.previousAngle[7]) / Double.pow((-1.3333333333333333 * self.cartMass) / self.poleMass + Double.pow(Double.cos(self.previousAngle[7]), 2) + -1.3333333333333333, 2)) + -1.0 * ((self.poleLength * Double.pow(self.previousAngularVelocity[7], 2) * Double.sin(self.previousAngle[7]) * -0.13333333333333333) / ((-1.3333333333333333 * self.cartMass) / self.poleMass + Double.pow(Double.cos(self.previousAngle[7]), 2) + -1.3333333333333333)) + -1.0 * ((Double.cos(self.previousAngle[7]) * self.gravity * Double.sin(self.previousAngle[7]) * 0.1) / ((-1.3333333333333333 * self.cartMass) / self.poleMass + Double.pow(Double.cos(self.previousAngle[7]), 2) + -1.3333333333333333)) + -1.0 * ((self.poleLength * Double.pow(self.previousAngularVelocity[7], 2) * Double.sin(self.previousAngle[7]) * 0.26666666666666666) / ((-1.3333333333333333 * self.cartMass) / self.poleMass + Double.pow(Double.cos(self.previousAngle[7]), 2) + -1.3333333333333333)))
buffer[30] = -1.0 * 0.0
buffer[31] = -1.0 * (-1.0 * ((Double.pow(self.previousAngularVelocity[7], 2) * Double.sin(self.previousAngle[7]) * 0.2) / ((1.3333333333333333 * self.cartMass) / self.poleMass + Double.cos(self.previousAngle[7]) * -1.0 + 1.3333333333333333)) + -1.0 * ((self.gravity * self.poleMass * Double.sin(self.previousAngle[7]) * 0.1) / (1.3333333333333333 * self.poleLength * self.cartMass + self.poleLength * self.poleMass * Double.pow(Double.cos(self.previousAngle[7]), 2) * -1.0 + 1.3333333333333333 * self.poleLength * self.poleMass)) + -1.0 * ((self.gravity * self.poleLength * Double.pow(self.poleMass, 2) * Double.pow(Double.cos(self.previousAngle[7]), 3) * 0.1 * self.previousAngle[7] + Double.cos(self.previousAngle[7]) * self.gravity * self.poleLength * Double.pow(self.poleMass, 2) * Double.pow(Double.sin(self.previousAngle[7]), 2) * 0.2 * self.previousAngle[7] + Double.cos(self.previousAngle[7]) * -0.13333333333333333 * self.gravity * self.poleLength * self.cartMass * self.poleMass * self.previousAngle[7] + Double.cos(self.previousAngle[7]) * self.gravity * self.poleLength * Double.pow(self.poleMass, 2) * -0.13333333333333333 * self.previousAngle[7]) / Double.pow(1.3333333333333333 * self.poleLength * self.cartMass + self.poleLength * self.poleMass * Double.pow(Double.cos(self.previousAngle[7]), 2) * -1.0 + 1.3333333333333333 * self.poleLength * self.poleMass, 2)) + -1.0 * ((self.gravity * self.cartMass * Double.sin(self.previousAngle[7]) * 0.1) / (1.3333333333333333 * self.poleLength * self.cartMass + self.poleLength * self.poleMass * Double.pow(Double.cos(self.previousAngle[7]), 2) * -1.0 + 1.3333333333333333 * self.poleLength * self.poleMass)) + -1.0 * ((Double.cos(self.previousAngle[7]) * self.gravity * self.poleLength * self.cartMass * self.poleMass * Double.pow(Double.sin(self.previousAngle[7]), 2) * 0.2 * self.previousAngle[7] + Double.cos(self.previousAngle[7]) * self.gravity * self.poleLength * Double.pow(self.cartMass, 2) * -0.13333333333333333 * self.previousAngle[7] + self.gravity * self.poleLength * self.cartMass * self.poleMass * Double.pow(Double.cos(self.previousAngle[7]), 3) * 0.1 * self.previousAngle[7] + Double.cos(self.previousAngle[7]) * -0.13333333333333333 * self.gravity * self.poleLength * self.cartMass * self.poleMass * self.previousAngle[7]) / Double.pow(1.3333333333333333 * self.poleLength * self.cartMass + self.poleLength * self.poleMass * Double.pow(Double.cos(self.previousAngle[7]), 2) * -1.0 + 1.3333333333333333 * self.poleLength * self.poleMass, 2)) + -1.0 * ((Double.pow(self.previousAngularVelocity[7], 2) * Double.sin(self.previousAngle[7]) * -0.1) / ((1.3333333333333333 * self.cartMass) / self.poleMass + Double.cos(self.previousAngle[7]) * -1.0 + 1.3333333333333333)))
buffer[32] = -1.0 * 0.0
buffer[33] = -1.0 * (-1.0 * ((self.poleLength * Double.pow(self.previousAngularVelocity[8], 2) * Double.sin(self.previousAngle[8]) * 0.26666666666666666) / ((-1.3333333333333333 * self.cartMass) / self.poleMass + Double.pow(Double.cos(self.previousAngle[8]), 2) + -1.3333333333333333)) + -1.0 * ((Double.cos(self.previousAngle[8]) * self.gravity * Double.sin(self.previousAngle[8]) * 0.1) / ((-1.3333333333333333 * self.cartMass) / self.poleMass + Double.pow(Double.cos(self.previousAngle[8]), 2) + -1.3333333333333333)) + -1.0 * (((self.gravity * self.cartMass * Double.pow(Double.sin(self.previousAngle[8]), 2) * -0.13333333333333333 * self.previousAngle[8]) / self.poleMass + (self.gravity * self.cartMass * Double.pow(Double.cos(self.previousAngle[8]), 2) * 0.13333333333333333 * self.previousAngle[8]) / self.poleMass + self.gravity * Double.pow(Double.cos(self.previousAngle[8]), 2) * 0.13333333333333333 * self.previousAngle[8] + self.gravity * Double.pow(Double.sin(self.previousAngle[8]), 2) * -0.13333333333333333 * self.previousAngle[8] + self.gravity * Double.pow(Double.sin(self.previousAngle[8]), 2) * Double.pow(Double.cos(self.previousAngle[8]), 2) * -0.2 * self.previousAngle[8] + self.gravity * Double.pow(Double.cos(self.previousAngle[8]), 4) * -0.1 * self.previousAngle[8] + self.gravity * Double.pow(Double.sin(self.previousAngle[8]), 2) * Double.pow(Double.cos(self.previousAngle[8]), 2) * 0.1 * self.previousAngle[8]) / Double.pow((-1.3333333333333333 * self.cartMass) / self.poleMass + Double.pow(Double.cos(self.previousAngle[8]), 2) + -1.3333333333333333, 2)) + -1.0 * ((self.poleLength * Double.pow(self.previousAngularVelocity[8], 2) * Double.sin(self.previousAngle[8]) * -0.13333333333333333) / ((-1.3333333333333333 * self.cartMass) / self.poleMass + Double.pow(Double.cos(self.previousAngle[8]), 2) + -1.3333333333333333)))
buffer[34] = -1.0 * 0.0
buffer[35] = -1.0 * (-1.0 * ((Double.cos(self.previousAngle[8]) * self.gravity * self.poleLength * self.cartMass * self.poleMass * Double.pow(Double.sin(self.previousAngle[8]), 2) * 0.2 * self.previousAngle[8] + Double.cos(self.previousAngle[8]) * self.gravity * self.poleLength * Double.pow(self.cartMass, 2) * -0.13333333333333333 * self.previousAngle[8] + Double.cos(self.previousAngle[8]) * -0.13333333333333333 * self.gravity * self.poleLength * self.cartMass * self.poleMass * self.previousAngle[8] + self.gravity * self.poleLength * self.cartMass * self.poleMass * Double.pow(Double.cos(self.previousAngle[8]), 3) * 0.1 * self.previousAngle[8]) / Double.pow(1.3333333333333333 * self.poleLength * self.cartMass + 1.3333333333333333 * self.poleLength * self.poleMass + self.poleLength * self.poleMass * Double.pow(Double.cos(self.previousAngle[8]), 2) * -1.0, 2)) + -1.0 * ((Double.pow(self.previousAngularVelocity[8], 2) * Double.sin(self.previousAngle[8]) * -0.1) / ((1.3333333333333333 * self.cartMass) / self.poleMass + Double.cos(self.previousAngle[8]) * -1.0 + 1.3333333333333333)) + -1.0 * ((self.gravity * self.cartMass * Double.sin(self.previousAngle[8]) * 0.1) / (1.3333333333333333 * self.poleLength * self.cartMass + 1.3333333333333333 * self.poleLength * self.poleMass + self.poleLength * self.poleMass * Double.pow(Double.cos(self.previousAngle[8]), 2) * -1.0)) + -1.0 * ((self.gravity * self.poleMass * Double.sin(self.previousAngle[8]) * 0.1) / (1.3333333333333333 * self.poleLength * self.cartMass + 1.3333333333333333 * self.poleLength * self.poleMass + self.poleLength * self.poleMass * Double.pow(Double.cos(self.previousAngle[8]), 2) * -1.0)) + -1.0 * ((Double.pow(self.previousAngularVelocity[8], 2) * Double.sin(self.previousAngle[8]) * 0.2) / ((1.3333333333333333 * self.cartMass) / self.poleMass + Double.cos(self.previousAngle[8]) * -1.0 + 1.3333333333333333)) + -1.0 * ((Double.cos(self.previousAngle[8]) * self.gravity * self.poleLength * Double.pow(Double.sin(self.previousAngle[8]), 2) * Double.pow(self.poleMass, 2) * 0.2 * self.previousAngle[8] + Double.cos(self.previousAngle[8]) * self.gravity * self.poleLength * Double.pow(self.poleMass, 2) * -0.13333333333333333 * self.previousAngle[8] + Double.cos(self.previousAngle[8]) * -0.13333333333333333 * self.gravity * self.poleLength * self.cartMass * self.poleMass * self.previousAngle[8] + self.gravity * self.poleLength * Double.pow(self.poleMass, 2) * Double.pow(Double.cos(self.previousAngle[8]), 3) * 0.1 * self.previousAngle[8]) / Double.pow(1.3333333333333333 * self.poleLength * self.cartMass + 1.3333333333333333 * self.poleLength * self.poleMass + self.poleLength * self.poleMass * Double.pow(Double.cos(self.previousAngle[8]), 2) * -1.0, 2)))
buffer[36] = -1.0 * 0.0
buffer[37] = -1.0 * (-1.0 * ((self.poleLength * Double.pow(self.previousAngularVelocity[9], 2) * Double.sin(self.previousAngle[9]) * -0.13333333333333333) / ((-1.3333333333333333 * self.cartMass) / self.poleMass + Double.pow(Double.cos(self.previousAngle[9]), 2) + -1.3333333333333333)) + -1.0 * ((Double.cos(self.previousAngle[9]) * self.gravity * Double.sin(self.previousAngle[9]) * 0.1) / ((-1.3333333333333333 * self.cartMass) / self.poleMass + Double.pow(Double.cos(self.previousAngle[9]), 2) + -1.3333333333333333)) + -1.0 * ((self.poleLength * Double.pow(self.previousAngularVelocity[9], 2) * Double.sin(self.previousAngle[9]) * 0.26666666666666666) / ((-1.3333333333333333 * self.cartMass) / self.poleMass + Double.pow(Double.cos(self.previousAngle[9]), 2) + -1.3333333333333333)) + -1.0 * (((self.gravity * self.cartMass * Double.pow(Double.cos(self.previousAngle[9]), 2) * 0.13333333333333333 * self.previousAngle[9]) / self.poleMass + (self.gravity * self.cartMass * Double.pow(Double.sin(self.previousAngle[9]), 2) * -0.13333333333333333 * self.previousAngle[9]) / self.poleMass + self.gravity * Double.pow(Double.sin(self.previousAngle[9]), 2) * Double.pow(Double.cos(self.previousAngle[9]), 2) * 0.1 * self.previousAngle[9] + self.gravity * Double.pow(Double.cos(self.previousAngle[9]), 2) * 0.13333333333333333 * self.previousAngle[9] + self.gravity * Double.pow(Double.cos(self.previousAngle[9]), 4) * -0.1 * self.previousAngle[9] + self.gravity * Double.pow(Double.sin(self.previousAngle[9]), 2) * -0.13333333333333333 * self.previousAngle[9] + self.gravity * Double.pow(Double.sin(self.previousAngle[9]), 2) * Double.pow(Double.cos(self.previousAngle[9]), 2) * -0.2 * self.previousAngle[9]) / Double.pow((-1.3333333333333333 * self.cartMass) / self.poleMass + Double.pow(Double.cos(self.previousAngle[9]), 2) + -1.3333333333333333, 2)))
buffer[38] = -1.0 * 0.0
buffer[39] = -1.0 * (-1.0 * ((Double.cos(self.previousAngle[9]) * -0.13333333333333333 * self.gravity * self.poleLength * self.cartMass * self.poleMass * self.previousAngle[9] + Double.cos(self.previousAngle[9]) * self.gravity * self.poleLength * Double.pow(self.poleMass, 2) * -0.13333333333333333 * self.previousAngle[9] + Double.cos(self.previousAngle[9]) * self.gravity * self.poleLength * Double.pow(self.poleMass, 2) * Double.pow(Double.sin(self.previousAngle[9]), 2) * 0.2 * self.previousAngle[9] + self.gravity * self.poleLength * Double.pow(self.poleMass, 2) * Double.pow(Double.cos(self.previousAngle[9]), 3) * 0.1 * self.previousAngle[9]) / Double.pow(1.3333333333333333 * self.poleLength * self.cartMass + 1.3333333333333333 * self.poleLength * self.poleMass + self.poleLength * self.poleMass * Double.pow(Double.cos(self.previousAngle[9]), 2) * -1.0, 2)) + -1.0 * ((self.gravity * self.poleMass * Double.sin(self.previousAngle[9]) * 0.1) / (1.3333333333333333 * self.poleLength * self.cartMass + 1.3333333333333333 * self.poleLength * self.poleMass + self.poleLength * self.poleMass * Double.pow(Double.cos(self.previousAngle[9]), 2) * -1.0)) + -1.0 * ((Double.cos(self.previousAngle[9]) * self.gravity * self.poleLength * Double.pow(self.cartMass, 2) * -0.13333333333333333 * self.previousAngle[9] + Double.cos(self.previousAngle[9]) * self.gravity * self.poleLength * self.cartMass * self.poleMass * Double.pow(Double.sin(self.previousAngle[9]), 2) * 0.2 * self.previousAngle[9] + Double.cos(self.previousAngle[9]) * -0.13333333333333333 * self.gravity * self.poleLength * self.cartMass * self.poleMass * self.previousAngle[9] + self.gravity * self.poleLength * self.cartMass * self.poleMass * Double.pow(Double.cos(self.previousAngle[9]), 3) * 0.1 * self.previousAngle[9]) / Double.pow(1.3333333333333333 * self.poleLength * self.cartMass + 1.3333333333333333 * self.poleLength * self.poleMass + self.poleLength * self.poleMass * Double.pow(Double.cos(self.previousAngle[9]), 2) * -1.0, 2)) + -1.0 * ((self.gravity * self.cartMass * Double.sin(self.previousAngle[9]) * 0.1) / (1.3333333333333333 * self.poleLength * self.cartMass + 1.3333333333333333 * self.poleLength * self.poleMass + self.poleLength * self.poleMass * Double.pow(Double.cos(self.previousAngle[9]), 2) * -1.0)) + -1.0 * ((Double.pow(self.previousAngularVelocity[9], 2) * Double.sin(self.previousAngle[9]) * -0.1) / ((1.3333333333333333 * self.cartMass) / self.poleMass + Double.cos(self.previousAngle[9]) * -1.0 + 1.3333333333333333)) + -1.0 * ((Double.pow(self.previousAngularVelocity[9], 2) * Double.sin(self.previousAngle[9]) * 0.2) / ((1.3333333333333333 * self.cartMass) / self.poleMass + Double.cos(self.previousAngle[9]) * -1.0 + 1.3333333333333333)))
buffer[40] = -1.0 * 0.0
buffer[41] = -1.0 * (-1.0 * ((self.poleLength * Double.pow(self.previousAngularVelocity[10], 2) * Double.sin(self.previousAngle[10]) * 0.26666666666666666) / ((-1.3333333333333333 * self.cartMass) / self.poleMass + Double.pow(Double.cos(self.previousAngle[10]), 2) + -1.3333333333333333)) + -1.0 * ((Double.cos(self.previousAngle[10]) * self.gravity * Double.sin(self.previousAngle[10]) * 0.1) / ((-1.3333333333333333 * self.cartMass) / self.poleMass + Double.pow(Double.cos(self.previousAngle[10]), 2) + -1.3333333333333333)) + -1.0 * ((self.poleLength * Double.pow(self.previousAngularVelocity[10], 2) * Double.sin(self.previousAngle[10]) * -0.13333333333333333) / ((-1.3333333333333333 * self.cartMass) / self.poleMass + Double.pow(Double.cos(self.previousAngle[10]), 2) + -1.3333333333333333)) + -1.0 * (((self.gravity * self.cartMass * Double.pow(Double.sin(self.previousAngle[10]), 2) * -0.13333333333333333 * self.previousAngle[10]) / self.poleMass + (self.gravity * self.cartMass * Double.pow(Double.cos(self.previousAngle[10]), 2) * 0.13333333333333333 * self.previousAngle[10]) / self.poleMass + self.gravity * Double.pow(Double.cos(self.previousAngle[10]), 4) * -0.1 * self.previousAngle[10] + self.gravity * Double.pow(Double.sin(self.previousAngle[10]), 2) * Double.pow(Double.cos(self.previousAngle[10]), 2) * 0.1 * self.previousAngle[10] + self.gravity * Double.pow(Double.sin(self.previousAngle[10]), 2) * Double.pow(Double.cos(self.previousAngle[10]), 2) * -0.2 * self.previousAngle[10] + self.gravity * Double.pow(Double.cos(self.previousAngle[10]), 2) * 0.13333333333333333 * self.previousAngle[10] + self.gravity * Double.pow(Double.sin(self.previousAngle[10]), 2) * -0.13333333333333333 * self.previousAngle[10]) / Double.pow((-1.3333333333333333 * self.cartMass) / self.poleMass + Double.pow(Double.cos(self.previousAngle[10]), 2) + -1.3333333333333333, 2)))
buffer[42] = -1.0 * 0.0
buffer[43] = -1.0 * (-1.0 * ((self.gravity * self.poleLength * Double.pow(self.poleMass, 2) * Double.pow(Double.cos(self.previousAngle[10]), 3) * 0.1 * self.previousAngle[10] + Double.cos(self.previousAngle[10]) * -0.13333333333333333 * self.gravity * self.poleLength * self.cartMass * self.poleMass * self.previousAngle[10] + Double.cos(self.previousAngle[10]) * self.gravity * self.poleLength * Double.pow(self.poleMass, 2) * -0.13333333333333333 * self.previousAngle[10] + Double.cos(self.previousAngle[10]) * self.gravity * self.poleLength * Double.pow(self.poleMass, 2) * Double.pow(Double.sin(self.previousAngle[10]), 2) * 0.2 * self.previousAngle[10]) / Double.pow(1.3333333333333333 * self.poleLength * self.cartMass + 1.3333333333333333 * self.poleLength * self.poleMass + self.poleLength * self.poleMass * Double.pow(Double.cos(self.previousAngle[10]), 2) * -1.0, 2)) + -1.0 * ((self.gravity * self.poleMass * Double.sin(self.previousAngle[10]) * 0.1) / (1.3333333333333333 * self.poleLength * self.cartMass + 1.3333333333333333 * self.poleLength * self.poleMass + self.poleLength * self.poleMass * Double.pow(Double.cos(self.previousAngle[10]), 2) * -1.0)) + -1.0 * ((Double.pow(self.previousAngularVelocity[10], 2) * Double.sin(self.previousAngle[10]) * -0.1) / ((1.3333333333333333 * self.cartMass) / self.poleMass + Double.cos(self.previousAngle[10]) * -1.0 + 1.3333333333333333)) + -1.0 * ((self.gravity * self.cartMass * Double.sin(self.previousAngle[10]) * 0.1) / (1.3333333333333333 * self.poleLength * self.cartMass + 1.3333333333333333 * self.poleLength * self.poleMass + self.poleLength * self.poleMass * Double.pow(Double.cos(self.previousAngle[10]), 2) * -1.0)) + -1.0 * ((Double.cos(self.previousAngle[10]) * self.gravity * self.poleLength * Double.pow(self.cartMass, 2) * -0.13333333333333333 * self.previousAngle[10] + Double.cos(self.previousAngle[10]) * -0.13333333333333333 * self.gravity * self.poleLength * self.cartMass * self.poleMass * self.previousAngle[10] + Double.cos(self.previousAngle[10]) * self.gravity * self.poleLength * self.cartMass * self.poleMass * Double.pow(Double.sin(self.previousAngle[10]), 2) * 0.2 * self.previousAngle[10] + self.gravity * self.poleLength * self.cartMass * self.poleMass * Double.pow(Double.cos(self.previousAngle[10]), 3) * 0.1 * self.previousAngle[10]) / Double.pow(1.3333333333333333 * self.poleLength * self.cartMass + 1.3333333333333333 * self.poleLength * self.poleMass + self.poleLength * self.poleMass * Double.pow(Double.cos(self.previousAngle[10]), 2) * -1.0, 2)) + -1.0 * ((Double.pow(self.previousAngularVelocity[10], 2) * Double.sin(self.previousAngle[10]) * 0.2) / ((1.3333333333333333 * self.cartMass) / self.poleMass + Double.cos(self.previousAngle[10]) * -1.0 + 1.3333333333333333)))
buffer[44] = -1.0 * 0.0
buffer[45] = -1.0 * (-1.0 * (((self.gravity * self.cartMass * Double.pow(Double.sin(self.previousAngle[11]), 2) * -0.13333333333333333 * self.previousAngle[11]) / self.poleMass + (self.gravity * self.cartMass * Double.pow(Double.cos(self.previousAngle[11]), 2) * 0.13333333333333333 * self.previousAngle[11]) / self.poleMass + self.gravity * Double.pow(Double.cos(self.previousAngle[11]), 4) * -0.1 * self.previousAngle[11] + self.gravity * Double.pow(Double.sin(self.previousAngle[11]), 2) * Double.pow(Double.cos(self.previousAngle[11]), 2) * -0.2 * self.previousAngle[11] + self.gravity * Double.pow(Double.cos(self.previousAngle[11]), 2) * 0.13333333333333333 * self.previousAngle[11] + self.gravity * Double.pow(Double.sin(self.previousAngle[11]), 2) * Double.pow(Double.cos(self.previousAngle[11]), 2) * 0.1 * self.previousAngle[11] + self.gravity * Double.pow(Double.sin(self.previousAngle[11]), 2) * -0.13333333333333333 * self.previousAngle[11]) / Double.pow((-1.3333333333333333 * self.cartMass) / self.poleMass + Double.pow(Double.cos(self.previousAngle[11]), 2) + -1.3333333333333333, 2)) + -1.0 * ((self.poleLength * Double.pow(self.previousAngularVelocity[11], 2) * Double.sin(self.previousAngle[11]) * 0.26666666666666666) / ((-1.3333333333333333 * self.cartMass) / self.poleMass + Double.pow(Double.cos(self.previousAngle[11]), 2) + -1.3333333333333333)) + -1.0 * ((self.poleLength * Double.pow(self.previousAngularVelocity[11], 2) * Double.sin(self.previousAngle[11]) * -0.13333333333333333) / ((-1.3333333333333333 * self.cartMass) / self.poleMass + Double.pow(Double.cos(self.previousAngle[11]), 2) + -1.3333333333333333)) + -1.0 * ((Double.cos(self.previousAngle[11]) * self.gravity * Double.sin(self.previousAngle[11]) * 0.1) / ((-1.3333333333333333 * self.cartMass) / self.poleMass + Double.pow(Double.cos(self.previousAngle[11]), 2) + -1.3333333333333333)))
buffer[46] = -1.0 * 0.0
buffer[47] = -1.0 * (-1.0 * ((Double.cos(self.previousAngle[11]) * -0.13333333333333333 * self.gravity * self.poleLength * self.cartMass * self.poleMass * self.previousAngle[11] + self.gravity * self.poleLength * Double.pow(Double.cos(self.previousAngle[11]), 3) * Double.pow(self.poleMass, 2) * 0.1 * self.previousAngle[11] + Double.cos(self.previousAngle[11]) * self.gravity * self.poleLength * Double.pow(self.poleMass, 2) * Double.pow(Double.sin(self.previousAngle[11]), 2) * 0.2 * self.previousAngle[11] + Double.cos(self.previousAngle[11]) * self.gravity * self.poleLength * Double.pow(self.poleMass, 2) * -0.13333333333333333 * self.previousAngle[11]) / Double.pow(1.3333333333333333 * self.poleLength * self.cartMass + 1.3333333333333333 * self.poleLength * self.poleMass + self.poleLength * self.poleMass * Double.pow(Double.cos(self.previousAngle[11]), 2) * -1.0, 2)) + -1.0 * ((Double.cos(self.previousAngle[11]) * -0.13333333333333333 * self.gravity * self.poleLength * self.cartMass * self.poleMass * self.previousAngle[11] + self.gravity * self.poleLength * self.cartMass * self.poleMass * Double.pow(Double.cos(self.previousAngle[11]), 3) * 0.1 * self.previousAngle[11] + Double.cos(self.previousAngle[11]) * self.gravity * self.poleLength * Double.pow(self.cartMass, 2) * -0.13333333333333333 * self.previousAngle[11] + Double.cos(self.previousAngle[11]) * self.gravity * self.poleLength * self.cartMass * self.poleMass * Double.pow(Double.sin(self.previousAngle[11]), 2) * 0.2 * self.previousAngle[11]) / Double.pow(1.3333333333333333 * self.poleLength * self.cartMass + 1.3333333333333333 * self.poleLength * self.poleMass + self.poleLength * self.poleMass * Double.pow(Double.cos(self.previousAngle[11]), 2) * -1.0, 2)) + -1.0 * ((Double.pow(self.previousAngularVelocity[11], 2) * Double.sin(self.previousAngle[11]) * -0.1) / ((1.3333333333333333 * self.cartMass) / self.poleMass + Double.cos(self.previousAngle[11]) * -1.0 + 1.3333333333333333)) + -1.0 * ((self.gravity * self.poleMass * Double.sin(self.previousAngle[11]) * 0.1) / (1.3333333333333333 * self.poleLength * self.cartMass + 1.3333333333333333 * self.poleLength * self.poleMass + self.poleLength * self.poleMass * Double.pow(Double.cos(self.previousAngle[11]), 2) * -1.0)) + -1.0 * ((Double.pow(self.previousAngularVelocity[11], 2) * Double.sin(self.previousAngle[11]) * 0.2) / ((1.3333333333333333 * self.cartMass) / self.poleMass + Double.cos(self.previousAngle[11]) * -1.0 + 1.3333333333333333)) + -1.0 * ((self.gravity * self.cartMass * Double.sin(self.previousAngle[11]) * 0.1) / (1.3333333333333333 * self.poleLength * self.cartMass + 1.3333333333333333 * self.poleLength * self.poleMass + self.poleLength * self.poleMass * Double.pow(Double.cos(self.previousAngle[11]), 2) * -1.0)))
buffer[48] = -1.0 * 0.0
buffer[49] = -1.0 * (-1.0 * ((self.poleLength * Double.pow(self.previousAngularVelocity[12], 2) * Double.sin(self.previousAngle[12]) * -0.13333333333333333) / ((-1.3333333333333333 * self.cartMass) / self.poleMass + Double.pow(Double.cos(self.previousAngle[12]), 2) + -1.3333333333333333)) + -1.0 * ((self.poleLength * Double.pow(self.previousAngularVelocity[12], 2) * Double.sin(self.previousAngle[12]) * 0.26666666666666666) / ((-1.3333333333333333 * self.cartMass) / self.poleMass + Double.pow(Double.cos(self.previousAngle[12]), 2) + -1.3333333333333333)) + -1.0 * ((Double.cos(self.previousAngle[12]) * self.gravity * Double.sin(self.previousAngle[12]) * 0.1) / ((-1.3333333333333333 * self.cartMass) / self.poleMass + Double.pow(Double.cos(self.previousAngle[12]), 2) + -1.3333333333333333)) + -1.0 * (((self.gravity * self.cartMass * Double.pow(Double.cos(self.previousAngle[12]), 2) * 0.13333333333333333 * self.previousAngle[12]) / self.poleMass + (self.gravity * self.cartMass * Double.pow(Double.sin(self.previousAngle[12]), 2) * -0.13333333333333333 * self.previousAngle[12]) / self.poleMass + self.gravity * Double.pow(Double.cos(self.previousAngle[12]), 2) * Double.pow(Double.sin(self.previousAngle[12]), 2) * -0.2 * self.previousAngle[12] + self.gravity * Double.pow(Double.cos(self.previousAngle[12]), 4) * -0.1 * self.previousAngle[12] + self.gravity * Double.pow(Double.cos(self.previousAngle[12]), 2) * Double.pow(Double.sin(self.previousAngle[12]), 2) * 0.1 * self.previousAngle[12] + self.gravity * Double.pow(Double.cos(self.previousAngle[12]), 2) * 0.13333333333333333 * self.previousAngle[12] + self.gravity * Double.pow(Double.sin(self.previousAngle[12]), 2) * -0.13333333333333333 * self.previousAngle[12]) / Double.pow((-1.3333333333333333 * self.cartMass) / self.poleMass + Double.pow(Double.cos(self.previousAngle[12]), 2) + -1.3333333333333333, 2)))
buffer[50] = -1.0 * 0.0
buffer[51] = -1.0 * (-1.0 * ((Double.cos(self.previousAngle[12]) * -0.13333333333333333 * self.gravity * self.poleLength * self.cartMass * self.poleMass * self.previousAngle[12] + Double.cos(self.previousAngle[12]) * self.gravity * self.poleLength * Double.pow(self.poleMass, 2) * Double.pow(Double.sin(self.previousAngle[12]), 2) * 0.2 * self.previousAngle[12] + self.gravity * self.poleLength * Double.pow(self.poleMass, 2) * Double.pow(Double.cos(self.previousAngle[12]), 3) * 0.1 * self.previousAngle[12] + Double.cos(self.previousAngle[12]) * self.gravity * self.poleLength * Double.pow(self.poleMass, 2) * -0.13333333333333333 * self.previousAngle[12]) / Double.pow(1.3333333333333333 * self.poleLength * self.cartMass + 1.3333333333333333 * self.poleLength * self.poleMass + self.poleLength * self.poleMass * Double.pow(Double.cos(self.previousAngle[12]), 2) * -1.0, 2)) + -1.0 * ((self.gravity * self.cartMass * Double.sin(self.previousAngle[12]) * 0.1) / (1.3333333333333333 * self.poleLength * self.cartMass + 1.3333333333333333 * self.poleLength * self.poleMass + self.poleLength * self.poleMass * Double.pow(Double.cos(self.previousAngle[12]), 2) * -1.0)) + -1.0 * ((self.gravity * self.poleMass * Double.sin(self.previousAngle[12]) * 0.1) / (1.3333333333333333 * self.poleLength * self.cartMass + 1.3333333333333333 * self.poleLength * self.poleMass + self.poleLength * self.poleMass * Double.pow(Double.cos(self.previousAngle[12]), 2) * -1.0)) + -1.0 * ((Double.cos(self.previousAngle[12]) * self.gravity * self.poleLength * self.cartMass * self.poleMass * Double.pow(Double.sin(self.previousAngle[12]), 2) * 0.2 * self.previousAngle[12] + Double.cos(self.previousAngle[12]) * -0.13333333333333333 * self.gravity * self.poleLength * self.cartMass * self.poleMass * self.previousAngle[12] + Double.cos(self.previousAngle[12]) * self.gravity * self.poleLength * Double.pow(self.cartMass, 2) * -0.13333333333333333 * self.previousAngle[12] + self.gravity * self.poleLength * self.cartMass * self.poleMass * Double.pow(Double.cos(self.previousAngle[12]), 3) * 0.1 * self.previousAngle[12]) / Double.pow(1.3333333333333333 * self.poleLength * self.cartMass + 1.3333333333333333 * self.poleLength * self.poleMass + self.poleLength * self.poleMass * Double.pow(Double.cos(self.previousAngle[12]), 2) * -1.0, 2)) + -1.0 * ((Double.pow(self.previousAngularVelocity[12], 2) * Double.sin(self.previousAngle[12]) * 0.2) / ((1.3333333333333333 * self.cartMass) / self.poleMass + Double.cos(self.previousAngle[12]) * -1.0 + 1.3333333333333333)) + -1.0 * ((Double.pow(self.previousAngularVelocity[12], 2) * Double.sin(self.previousAngle[12]) * -0.1) / ((1.3333333333333333 * self.cartMass) / self.poleMass + Double.cos(self.previousAngle[12]) * -1.0 + 1.3333333333333333)))
buffer[52] = -1.0 * 0.0
buffer[53] = -1.0 * (-1.0 * ((self.poleLength * Double.pow(self.previousAngularVelocity[13], 2) * Double.sin(self.previousAngle[13]) * 0.26666666666666666) / ((-1.3333333333333333 * self.cartMass) / self.poleMass + Double.pow(Double.cos(self.previousAngle[13]), 2) + -1.3333333333333333)) + -1.0 * (((self.gravity * self.cartMass * Double.pow(Double.sin(self.previousAngle[13]), 2) * -0.13333333333333333 * self.previousAngle[13]) / self.poleMass + (self.gravity * self.cartMass * Double.pow(Double.cos(self.previousAngle[13]), 2) * 0.13333333333333333 * self.previousAngle[13]) / self.poleMass + self.gravity * Double.pow(Double.cos(self.previousAngle[13]), 4) * -0.1 * self.previousAngle[13] + self.gravity * Double.pow(Double.cos(self.previousAngle[13]), 2) * Double.pow(Double.sin(self.previousAngle[13]), 2) * -0.2 * self.previousAngle[13] + self.gravity * Double.pow(Double.sin(self.previousAngle[13]), 2) * -0.13333333333333333 * self.previousAngle[13] + self.gravity * Double.pow(Double.cos(self.previousAngle[13]), 2) * Double.pow(Double.sin(self.previousAngle[13]), 2) * 0.1 * self.previousAngle[13] + self.gravity * Double.pow(Double.cos(self.previousAngle[13]), 2) * 0.13333333333333333 * self.previousAngle[13]) / Double.pow((-1.3333333333333333 * self.cartMass) / self.poleMass + Double.pow(Double.cos(self.previousAngle[13]), 2) + -1.3333333333333333, 2)) + -1.0 * ((Double.cos(self.previousAngle[13]) * self.gravity * Double.sin(self.previousAngle[13]) * 0.1) / ((-1.3333333333333333 * self.cartMass) / self.poleMass + Double.pow(Double.cos(self.previousAngle[13]), 2) + -1.3333333333333333)) + -1.0 * ((self.poleLength * Double.pow(self.previousAngularVelocity[13], 2) * Double.sin(self.previousAngle[13]) * -0.13333333333333333) / ((-1.3333333333333333 * self.cartMass) / self.poleMass + Double.pow(Double.cos(self.previousAngle[13]), 2) + -1.3333333333333333)))
buffer[54] = -1.0 * 0.0
buffer[55] = -1.0 * (-1.0 * ((Double.cos(self.previousAngle[13]) * self.gravity * self.poleLength * Double.pow(self.poleMass, 2) * -0.13333333333333333 * self.previousAngle[13] + Double.cos(self.previousAngle[13]) * self.gravity * self.poleLength * Double.pow(self.poleMass, 2) * Double.pow(Double.sin(self.previousAngle[13]), 2) * 0.2 * self.previousAngle[13] + Double.cos(self.previousAngle[13]) * -0.13333333333333333 * self.gravity * self.poleLength * self.cartMass * self.poleMass * self.previousAngle[13] + self.gravity * self.poleLength * Double.pow(self.poleMass, 2) * Double.pow(Double.cos(self.previousAngle[13]), 3) * 0.1 * self.previousAngle[13]) / Double.pow(self.poleLength * self.poleMass * Double.pow(Double.cos(self.previousAngle[13]), 2) * -1.0 + 1.3333333333333333 * self.poleLength * self.cartMass + 1.3333333333333333 * self.poleLength * self.poleMass, 2)) + -1.0 * ((Double.pow(self.previousAngularVelocity[13], 2) * Double.sin(self.previousAngle[13]) * 0.2) / ((1.3333333333333333 * self.cartMass) / self.poleMass + Double.cos(self.previousAngle[13]) * -1.0 + 1.3333333333333333)) + -1.0 * ((self.gravity * self.poleMass * Double.sin(self.previousAngle[13]) * 0.1) / (self.poleLength * self.poleMass * Double.pow(Double.cos(self.previousAngle[13]), 2) * -1.0 + 1.3333333333333333 * self.poleLength * self.cartMass + 1.3333333333333333 * self.poleLength * self.poleMass)) + -1.0 * ((Double.cos(self.previousAngle[13]) * -0.13333333333333333 * self.gravity * self.poleLength * self.cartMass * self.poleMass * self.previousAngle[13] + Double.cos(self.previousAngle[13]) * self.gravity * self.poleLength * self.cartMass * self.poleMass * Double.pow(Double.sin(self.previousAngle[13]), 2) * 0.2 * self.previousAngle[13] + Double.cos(self.previousAngle[13]) * self.gravity * self.poleLength * Double.pow(self.cartMass, 2) * -0.13333333333333333 * self.previousAngle[13] + self.gravity * self.poleLength * self.cartMass * self.poleMass * Double.pow(Double.cos(self.previousAngle[13]), 3) * 0.1 * self.previousAngle[13]) / Double.pow(self.poleLength * self.poleMass * Double.pow(Double.cos(self.previousAngle[13]), 2) * -1.0 + 1.3333333333333333 * self.poleLength * self.cartMass + 1.3333333333333333 * self.poleLength * self.poleMass, 2)) + -1.0 * ((self.gravity * self.cartMass * Double.sin(self.previousAngle[13]) * 0.1) / (self.poleLength * self.poleMass * Double.pow(Double.cos(self.previousAngle[13]), 2) * -1.0 + 1.3333333333333333 * self.poleLength * self.cartMass + 1.3333333333333333 * self.poleLength * self.poleMass)) + -1.0 * ((Double.pow(self.previousAngularVelocity[13], 2) * Double.sin(self.previousAngle[13]) * -0.1) / ((1.3333333333333333 * self.cartMass) / self.poleMass + Double.cos(self.previousAngle[13]) * -1.0 + 1.3333333333333333)))
buffer[56] = -1.0 * 0.0
buffer[57] = -1.0 * (-1.0 * ((self.poleLength * Double.pow(self.previousAngularVelocity[14], 2) * Double.sin(self.previousAngle[14]) * -0.13333333333333333) / ((-1.3333333333333333 * self.cartMass) / self.poleMass + Double.pow(Double.cos(self.previousAngle[14]), 2) + -1.3333333333333333)) + -1.0 * (((self.gravity * self.cartMass * Double.pow(Double.sin(self.previousAngle[14]), 2) * -0.13333333333333333 * self.previousAngle[14]) / self.poleMass + (self.gravity * self.cartMass * Double.pow(Double.cos(self.previousAngle[14]), 2) * 0.13333333333333333 * self.previousAngle[14]) / self.poleMass + self.gravity * Double.pow(Double.cos(self.previousAngle[14]), 2) * Double.pow(Double.sin(self.previousAngle[14]), 2) * -0.2 * self.previousAngle[14] + self.gravity * Double.pow(Double.cos(self.previousAngle[14]), 2) * 0.13333333333333333 * self.previousAngle[14] + self.gravity * Double.pow(Double.sin(self.previousAngle[14]), 2) * -0.13333333333333333 * self.previousAngle[14] + self.gravity * Double.pow(Double.cos(self.previousAngle[14]), 2) * Double.pow(Double.sin(self.previousAngle[14]), 2) * 0.1 * self.previousAngle[14] + self.gravity * Double.pow(Double.cos(self.previousAngle[14]), 4) * -0.1 * self.previousAngle[14]) / Double.pow((-1.3333333333333333 * self.cartMass) / self.poleMass + Double.pow(Double.cos(self.previousAngle[14]), 2) + -1.3333333333333333, 2)) + -1.0 * ((self.poleLength * Double.pow(self.previousAngularVelocity[14], 2) * Double.sin(self.previousAngle[14]) * 0.26666666666666666) / ((-1.3333333333333333 * self.cartMass) / self.poleMass + Double.pow(Double.cos(self.previousAngle[14]), 2) + -1.3333333333333333)) + -1.0 * ((Double.cos(self.previousAngle[14]) * self.gravity * Double.sin(self.previousAngle[14]) * 0.1) / ((-1.3333333333333333 * self.cartMass) / self.poleMass + Double.pow(Double.cos(self.previousAngle[14]), 2) + -1.3333333333333333)))
buffer[58] = -1.0 * 0.0
buffer[59] = -1.0 * (-1.0 * ((self.gravity * self.cartMass * Double.sin(self.previousAngle[14]) * 0.1) / (1.3333333333333333 * self.poleLength * self.cartMass + 1.3333333333333333 * self.poleLength * self.poleMass + self.poleLength * self.poleMass * Double.pow(Double.cos(self.previousAngle[14]), 2) * -1.0)) + -1.0 * ((Double.pow(self.previousAngularVelocity[14], 2) * Double.sin(self.previousAngle[14]) * 0.2) / ((1.3333333333333333 * self.cartMass) / self.poleMass + Double.cos(self.previousAngle[14]) * -1.0 + 1.3333333333333333)) + -1.0 * ((Double.cos(self.previousAngle[14]) * self.gravity * self.poleLength * Double.pow(self.cartMass, 2) * -0.13333333333333333 * self.previousAngle[14] + self.gravity * self.poleLength * self.cartMass * self.poleMass * Double.pow(Double.cos(self.previousAngle[14]), 3) * 0.1 * self.previousAngle[14] + Double.cos(self.previousAngle[14]) * self.gravity * self.poleLength * self.cartMass * self.poleMass * Double.pow(Double.sin(self.previousAngle[14]), 2) * 0.2 * self.previousAngle[14] + Double.cos(self.previousAngle[14]) * -0.13333333333333333 * self.gravity * self.poleLength * self.cartMass * self.poleMass * self.previousAngle[14]) / Double.pow(1.3333333333333333 * self.poleLength * self.cartMass + 1.3333333333333333 * self.poleLength * self.poleMass + self.poleLength * self.poleMass * Double.pow(Double.cos(self.previousAngle[14]), 2) * -1.0, 2)) + -1.0 * ((Double.pow(self.previousAngularVelocity[14], 2) * Double.sin(self.previousAngle[14]) * -0.1) / ((1.3333333333333333 * self.cartMass) / self.poleMass + Double.cos(self.previousAngle[14]) * -1.0 + 1.3333333333333333)) + -1.0 * ((self.gravity * self.poleMass * Double.sin(self.previousAngle[14]) * 0.1) / (1.3333333333333333 * self.poleLength * self.cartMass + 1.3333333333333333 * self.poleLength * self.poleMass + self.poleLength * self.poleMass * Double.pow(Double.cos(self.previousAngle[14]), 2) * -1.0)) + -1.0 * ((self.gravity * self.poleLength * Double.pow(self.poleMass, 2) * Double.pow(Double.cos(self.previousAngle[14]), 3) * 0.1 * self.previousAngle[14] + Double.cos(self.previousAngle[14]) * self.gravity * self.poleLength * Double.pow(self.poleMass, 2) * -0.13333333333333333 * self.previousAngle[14] + Double.cos(self.previousAngle[14]) * self.gravity * self.poleLength * Double.pow(self.poleMass, 2) * Double.pow(Double.sin(self.previousAngle[14]), 2) * 0.2 * self.previousAngle[14] + Double.cos(self.previousAngle[14]) * -0.13333333333333333 * self.gravity * self.poleLength * self.cartMass * self.poleMass * self.previousAngle[14]) / Double.pow(1.3333333333333333 * self.poleLength * self.cartMass + 1.3333333333333333 * self.poleLength * self.poleMass + self.poleLength * self.poleMass * Double.pow(Double.cos(self.previousAngle[14]), 2) * -1.0, 2)))
buffer[60] = -1.0 * 0.0
buffer[61] = -1.0 * (-1.0 * ((Double.cos(self.previousAngle[15]) * self.gravity * Double.sin(self.previousAngle[15]) * 0.1) / ((-1.3333333333333333 * self.cartMass) / self.poleMass + Double.pow(Double.cos(self.previousAngle[15]), 2) + -1.3333333333333333)) + -1.0 * (((self.gravity * self.cartMass * Double.pow(Double.sin(self.previousAngle[15]), 2) * -0.13333333333333333 * self.previousAngle[15]) / self.poleMass + (self.gravity * self.cartMass * Double.pow(Double.cos(self.previousAngle[15]), 2) * 0.13333333333333333 * self.previousAngle[15]) / self.poleMass + self.gravity * Double.pow(Double.cos(self.previousAngle[15]), 2) * Double.pow(Double.sin(self.previousAngle[15]), 2) * 0.1 * self.previousAngle[15] + self.gravity * Double.pow(Double.sin(self.previousAngle[15]), 2) * -0.13333333333333333 * self.previousAngle[15] + self.gravity * Double.pow(Double.cos(self.previousAngle[15]), 2) * Double.pow(Double.sin(self.previousAngle[15]), 2) * -0.2 * self.previousAngle[15] + self.gravity * Double.pow(Double.cos(self.previousAngle[15]), 2) * 0.13333333333333333 * self.previousAngle[15] + self.gravity * Double.pow(Double.cos(self.previousAngle[15]), 4) * -0.1 * self.previousAngle[15]) / Double.pow((-1.3333333333333333 * self.cartMass) / self.poleMass + Double.pow(Double.cos(self.previousAngle[15]), 2) + -1.3333333333333333, 2)) + -1.0 * ((self.poleLength * Double.pow(self.previousAngularVelocity[15], 2) * Double.sin(self.previousAngle[15]) * 0.26666666666666666) / ((-1.3333333333333333 * self.cartMass) / self.poleMass + Double.pow(Double.cos(self.previousAngle[15]), 2) + -1.3333333333333333)) + -1.0 * ((self.poleLength * Double.pow(self.previousAngularVelocity[15], 2) * Double.sin(self.previousAngle[15]) * -0.13333333333333333) / ((-1.3333333333333333 * self.cartMass) / self.poleMass + Double.pow(Double.cos(self.previousAngle[15]), 2) + -1.3333333333333333)))
buffer[62] = -1.0 * 0.0
buffer[63] = -1.0 * (-1.0 * ((Double.pow(self.previousAngularVelocity[15], 2) * Double.sin(self.previousAngle[15]) * -0.1) / ((1.3333333333333333 * self.cartMass) / self.poleMass + Double.cos(self.previousAngle[15]) * -1.0 + 1.3333333333333333)) + -1.0 * ((self.gravity * self.cartMass * Double.sin(self.previousAngle[15]) * 0.1) / (1.3333333333333333 * self.poleLength * self.cartMass + self.poleLength * self.poleMass * Double.pow(Double.cos(self.previousAngle[15]), 2) * -1.0 + 1.3333333333333333 * self.poleLength * self.poleMass)) + -1.0 * ((Double.pow(self.previousAngularVelocity[15], 2) * Double.sin(self.previousAngle[15]) * 0.2) / ((1.3333333333333333 * self.cartMass) / self.poleMass + Double.cos(self.previousAngle[15]) * -1.0 + 1.3333333333333333)) + -1.0 * ((self.gravity * self.poleLength * self.cartMass * self.poleMass * Double.pow(Double.cos(self.previousAngle[15]), 3) * 0.1 * self.previousAngle[15] + Double.cos(self.previousAngle[15]) * -0.13333333333333333 * self.gravity * self.poleLength * self.cartMass * self.poleMass * self.previousAngle[15] + Double.cos(self.previousAngle[15]) * self.gravity * self.poleLength * Double.pow(self.cartMass, 2) * -0.13333333333333333 * self.previousAngle[15] + Double.cos(self.previousAngle[15]) * self.gravity * self.poleLength * self.cartMass * self.poleMass * Double.pow(Double.sin(self.previousAngle[15]), 2) * 0.2 * self.previousAngle[15]) / Double.pow(1.3333333333333333 * self.poleLength * self.cartMass + self.poleLength * self.poleMass * Double.pow(Double.cos(self.previousAngle[15]), 2) * -1.0 + 1.3333333333333333 * self.poleLength * self.poleMass, 2)) + -1.0 * ((self.gravity * self.poleMass * Double.sin(self.previousAngle[15]) * 0.1) / (1.3333333333333333 * self.poleLength * self.cartMass + self.poleLength * self.poleMass * Double.pow(Double.cos(self.previousAngle[15]), 2) * -1.0 + 1.3333333333333333 * self.poleLength * self.poleMass)) + -1.0 * ((Double.cos(self.previousAngle[15]) * -0.13333333333333333 * self.gravity * self.poleLength * self.cartMass * self.poleMass * self.previousAngle[15] + Double.cos(self.previousAngle[15]) * self.gravity * self.poleLength * Double.pow(self.poleMass, 2) * -0.13333333333333333 * self.previousAngle[15] + Double.cos(self.previousAngle[15]) * self.gravity * self.poleLength * Double.pow(self.poleMass, 2) * Double.pow(Double.sin(self.previousAngle[15]), 2) * 0.2 * self.previousAngle[15] + self.gravity * self.poleLength * Double.pow(self.poleMass, 2) * Double.pow(Double.cos(self.previousAngle[15]), 3) * 0.1 * self.previousAngle[15]) / Double.pow(1.3333333333333333 * self.poleLength * self.cartMass + self.poleLength * self.poleMass * Double.pow(Double.cos(self.previousAngle[15]), 2) * -1.0 + 1.3333333333333333 * self.poleLength * self.poleMass, 2)))
buffer[64] = -1.0 * 0.0
buffer[65] = -1.0 * (-1.0 * ((self.poleLength * Double.pow(self.previousAngularVelocity[16], 2) * Double.sin(self.previousAngle[16]) * -0.13333333333333333) / ((-1.3333333333333333 * self.cartMass) / self.poleMass + Double.pow(Double.cos(self.previousAngle[16]), 2) + -1.3333333333333333)) + -1.0 * ((self.poleLength * Double.pow(self.previousAngularVelocity[16], 2) * Double.sin(self.previousAngle[16]) * 0.26666666666666666) / ((-1.3333333333333333 * self.cartMass) / self.poleMass + Double.pow(Double.cos(self.previousAngle[16]), 2) + -1.3333333333333333)) + -1.0 * (((self.gravity * self.cartMass * Double.pow(Double.cos(self.previousAngle[16]), 2) * 0.13333333333333333 * self.previousAngle[16]) / self.poleMass + (self.gravity * self.cartMass * Double.pow(Double.sin(self.previousAngle[16]), 2) * -0.13333333333333333 * self.previousAngle[16]) / self.poleMass + self.gravity * Double.pow(Double.sin(self.previousAngle[16]), 2) * Double.pow(Double.cos(self.previousAngle[16]), 2) * -0.2 * self.previousAngle[16] + self.gravity * Double.pow(Double.cos(self.previousAngle[16]), 2) * 0.13333333333333333 * self.previousAngle[16] + self.gravity * Double.pow(Double.sin(self.previousAngle[16]), 2) * Double.pow(Double.cos(self.previousAngle[16]), 2) * 0.1 * self.previousAngle[16] + self.gravity * Double.pow(Double.cos(self.previousAngle[16]), 4) * -0.1 * self.previousAngle[16] + self.gravity * Double.pow(Double.sin(self.previousAngle[16]), 2) * -0.13333333333333333 * self.previousAngle[16]) / Double.pow((-1.3333333333333333 * self.cartMass) / self.poleMass + Double.pow(Double.cos(self.previousAngle[16]), 2) + -1.3333333333333333, 2)) + -1.0 * ((Double.cos(self.previousAngle[16]) * self.gravity * Double.sin(self.previousAngle[16]) * 0.1) / ((-1.3333333333333333 * self.cartMass) / self.poleMass + Double.pow(Double.cos(self.previousAngle[16]), 2) + -1.3333333333333333)))
buffer[66] = -1.0 * 0.0
buffer[67] = -1.0 * (-1.0 * ((Double.cos(self.previousAngle[16]) * self.gravity * self.poleLength * Double.pow(self.poleMass, 2) * -0.13333333333333333 * self.previousAngle[16] + Double.cos(self.previousAngle[16]) * -0.13333333333333333 * self.gravity * self.poleLength * self.cartMass * self.poleMass * self.previousAngle[16] + Double.cos(self.previousAngle[16]) * self.gravity * self.poleLength * Double.pow(Double.sin(self.previousAngle[16]), 2) * Double.pow(self.poleMass, 2) * 0.2 * self.previousAngle[16] + self.gravity * self.poleLength * Double.pow(Double.cos(self.previousAngle[16]), 3) * Double.pow(self.poleMass, 2) * 0.1 * self.previousAngle[16]) / Double.pow(self.poleLength * self.poleMass * Double.pow(Double.cos(self.previousAngle[16]), 2) * -1.0 + 1.3333333333333333 * self.poleLength * self.cartMass + 1.3333333333333333 * self.poleLength * self.poleMass, 2)) + -1.0 * ((self.gravity * self.poleMass * Double.sin(self.previousAngle[16]) * 0.1) / (self.poleLength * self.poleMass * Double.pow(Double.cos(self.previousAngle[16]), 2) * -1.0 + 1.3333333333333333 * self.poleLength * self.cartMass + 1.3333333333333333 * self.poleLength * self.poleMass)) + -1.0 * ((self.gravity * self.poleLength * self.cartMass * self.poleMass * Double.pow(Double.cos(self.previousAngle[16]), 3) * 0.1 * self.previousAngle[16] + Double.cos(self.previousAngle[16]) * self.gravity * self.poleLength * Double.pow(self.cartMass, 2) * -0.13333333333333333 * self.previousAngle[16] + Double.cos(self.previousAngle[16]) * -0.13333333333333333 * self.gravity * self.poleLength * self.cartMass * self.poleMass * self.previousAngle[16] + Double.cos(self.previousAngle[16]) * self.gravity * self.poleLength * self.cartMass * self.poleMass * Double.pow(Double.sin(self.previousAngle[16]), 2) * 0.2 * self.previousAngle[16]) / Double.pow(self.poleLength * self.poleMass * Double.pow(Double.cos(self.previousAngle[16]), 2) * -1.0 + 1.3333333333333333 * self.poleLength * self.cartMass + 1.3333333333333333 * self.poleLength * self.poleMass, 2)) + -1.0 * ((Double.pow(self.previousAngularVelocity[16], 2) * Double.sin(self.previousAngle[16]) * -0.1) / ((1.3333333333333333 * self.cartMass) / self.poleMass + Double.cos(self.previousAngle[16]) * -1.0 + 1.3333333333333333)) + -1.0 * ((Double.pow(self.previousAngularVelocity[16], 2) * Double.sin(self.previousAngle[16]) * 0.2) / ((1.3333333333333333 * self.cartMass) / self.poleMass + Double.cos(self.previousAngle[16]) * -1.0 + 1.3333333333333333)) + -1.0 * ((self.gravity * self.cartMass * Double.sin(self.previousAngle[16]) * 0.1) / (self.poleLength * self.poleMass * Double.pow(Double.cos(self.previousAngle[16]), 2) * -1.0 + 1.3333333333333333 * self.poleLength * self.cartMass + 1.3333333333333333 * self.poleLength * self.poleMass)))
buffer[68] = -1.0 * 0.0
buffer[69] = -1.0 * (-1.0 * ((Double.cos(self.previousAngle[17]) * self.gravity * Double.sin(self.previousAngle[17]) * 0.1) / ((-1.3333333333333333 * self.cartMass) / self.poleMass + Double.pow(Double.cos(self.previousAngle[17]), 2) + -1.3333333333333333)) + -1.0 * ((self.poleLength * Double.pow(self.previousAngularVelocity[17], 2) * Double.sin(self.previousAngle[17]) * -0.13333333333333333) / ((-1.3333333333333333 * self.cartMass) / self.poleMass + Double.pow(Double.cos(self.previousAngle[17]), 2) + -1.3333333333333333)) + -1.0 * ((self.poleLength * Double.pow(self.previousAngularVelocity[17], 2) * Double.sin(self.previousAngle[17]) * 0.26666666666666666) / ((-1.3333333333333333 * self.cartMass) / self.poleMass + Double.pow(Double.cos(self.previousAngle[17]), 2) + -1.3333333333333333)) + -1.0 * (((self.gravity * self.cartMass * Double.pow(Double.cos(self.previousAngle[17]), 2) * 0.13333333333333333 * self.previousAngle[17]) / self.poleMass + (self.gravity * self.cartMass * Double.pow(Double.sin(self.previousAngle[17]), 2) * -0.13333333333333333 * self.previousAngle[17]) / self.poleMass + self.gravity * Double.pow(Double.cos(self.previousAngle[17]), 2) * 0.13333333333333333 * self.previousAngle[17] + self.gravity * Double.pow(Double.cos(self.previousAngle[17]), 2) * Double.pow(Double.sin(self.previousAngle[17]), 2) * -0.2 * self.previousAngle[17] + self.gravity * Double.pow(Double.cos(self.previousAngle[17]), 2) * Double.pow(Double.sin(self.previousAngle[17]), 2) * 0.1 * self.previousAngle[17] + self.gravity * Double.pow(Double.cos(self.previousAngle[17]), 4) * -0.1 * self.previousAngle[17] + self.gravity * Double.pow(Double.sin(self.previousAngle[17]), 2) * -0.13333333333333333 * self.previousAngle[17]) / Double.pow((-1.3333333333333333 * self.cartMass) / self.poleMass + Double.pow(Double.cos(self.previousAngle[17]), 2) + -1.3333333333333333, 2)))
buffer[70] = -1.0 * 0.0
buffer[71] = -1.0 * (-1.0 * ((Double.cos(self.previousAngle[17]) * self.gravity * self.poleLength * Double.pow(self.poleMass, 2) * Double.pow(Double.sin(self.previousAngle[17]), 2) * 0.2 * self.previousAngle[17] + self.gravity * self.poleLength * Double.pow(self.poleMass, 2) * Double.pow(Double.cos(self.previousAngle[17]), 3) * 0.1 * self.previousAngle[17] + Double.cos(self.previousAngle[17]) * self.gravity * self.poleLength * Double.pow(self.poleMass, 2) * -0.13333333333333333 * self.previousAngle[17] + Double.cos(self.previousAngle[17]) * -0.13333333333333333 * self.gravity * self.poleLength * self.cartMass * self.poleMass * self.previousAngle[17]) / Double.pow(self.poleLength * self.poleMass * Double.pow(Double.cos(self.previousAngle[17]), 2) * -1.0 + 1.3333333333333333 * self.poleLength * self.cartMass + 1.3333333333333333 * self.poleLength * self.poleMass, 2)) + -1.0 * ((Double.pow(self.previousAngularVelocity[17], 2) * Double.sin(self.previousAngle[17]) * 0.2) / ((1.3333333333333333 * self.cartMass) / self.poleMass + Double.cos(self.previousAngle[17]) * -1.0 + 1.3333333333333333)) + -1.0 * ((self.gravity * self.poleLength * self.cartMass * self.poleMass * Double.pow(Double.cos(self.previousAngle[17]), 3) * 0.1 * self.previousAngle[17] + Double.cos(self.previousAngle[17]) * self.gravity * self.poleLength * Double.pow(self.cartMass, 2) * -0.13333333333333333 * self.previousAngle[17] + Double.cos(self.previousAngle[17]) * self.gravity * self.poleLength * self.cartMass * self.poleMass * Double.pow(Double.sin(self.previousAngle[17]), 2) * 0.2 * self.previousAngle[17] + Double.cos(self.previousAngle[17]) * -0.13333333333333333 * self.gravity * self.poleLength * self.cartMass * self.poleMass * self.previousAngle[17]) / Double.pow(self.poleLength * self.poleMass * Double.pow(Double.cos(self.previousAngle[17]), 2) * -1.0 + 1.3333333333333333 * self.poleLength * self.cartMass + 1.3333333333333333 * self.poleLength * self.poleMass, 2)) + -1.0 * ((Double.pow(self.previousAngularVelocity[17], 2) * Double.sin(self.previousAngle[17]) * -0.1) / ((1.3333333333333333 * self.cartMass) / self.poleMass + Double.cos(self.previousAngle[17]) * -1.0 + 1.3333333333333333)) + -1.0 * ((self.gravity * self.poleMass * Double.sin(self.previousAngle[17]) * 0.1) / (self.poleLength * self.poleMass * Double.pow(Double.cos(self.previousAngle[17]), 2) * -1.0 + 1.3333333333333333 * self.poleLength * self.cartMass + 1.3333333333333333 * self.poleLength * self.poleMass)) + -1.0 * ((self.gravity * self.cartMass * Double.sin(self.previousAngle[17]) * 0.1) / (self.poleLength * self.poleMass * Double.pow(Double.cos(self.previousAngle[17]), 2) * -1.0 + 1.3333333333333333 * self.poleLength * self.cartMass + 1.3333333333333333 * self.poleLength * self.poleMass)))
buffer[72] = -1.0 * 0.0
buffer[73] = -1.0 * (-1.0 * ((self.poleLength * Double.pow(self.previousAngularVelocity[18], 2) * Double.sin(self.previousAngle[18]) * -0.13333333333333333) / ((-1.3333333333333333 * self.cartMass) / self.poleMass + Double.pow(Double.cos(self.previousAngle[18]), 2) + -1.3333333333333333)) + -1.0 * ((self.poleLength * Double.pow(self.previousAngularVelocity[18], 2) * Double.sin(self.previousAngle[18]) * 0.26666666666666666) / ((-1.3333333333333333 * self.cartMass) / self.poleMass + Double.pow(Double.cos(self.previousAngle[18]), 2) + -1.3333333333333333)) + -1.0 * ((Double.cos(self.previousAngle[18]) * self.gravity * Double.sin(self.previousAngle[18]) * 0.1) / ((-1.3333333333333333 * self.cartMass) / self.poleMass + Double.pow(Double.cos(self.previousAngle[18]), 2) + -1.3333333333333333)) + -1.0 * (((self.gravity * self.cartMass * Double.pow(Double.cos(self.previousAngle[18]), 2) * 0.13333333333333333 * self.previousAngle[18]) / self.poleMass + (self.gravity * self.cartMass * Double.pow(Double.sin(self.previousAngle[18]), 2) * -0.13333333333333333 * self.previousAngle[18]) / self.poleMass + self.gravity * Double.pow(Double.cos(self.previousAngle[18]), 4) * -0.1 * self.previousAngle[18] + self.gravity * Double.pow(Double.cos(self.previousAngle[18]), 2) * 0.13333333333333333 * self.previousAngle[18] + self.gravity * Double.pow(Double.sin(self.previousAngle[18]), 2) * -0.13333333333333333 * self.previousAngle[18] + self.gravity * Double.pow(Double.cos(self.previousAngle[18]), 2) * Double.pow(Double.sin(self.previousAngle[18]), 2) * 0.1 * self.previousAngle[18] + self.gravity * Double.pow(Double.cos(self.previousAngle[18]), 2) * Double.pow(Double.sin(self.previousAngle[18]), 2) * -0.2 * self.previousAngle[18]) / Double.pow((-1.3333333333333333 * self.cartMass) / self.poleMass + Double.pow(Double.cos(self.previousAngle[18]), 2) + -1.3333333333333333, 2)))
buffer[74] = -1.0 * 0.0
buffer[75] = -1.0 * (-1.0 * ((Double.pow(self.previousAngularVelocity[18], 2) * Double.sin(self.previousAngle[18]) * 0.2) / ((1.3333333333333333 * self.cartMass) / self.poleMass + Double.cos(self.previousAngle[18]) * -1.0 + 1.3333333333333333)) + -1.0 * ((Double.pow(self.previousAngularVelocity[18], 2) * Double.sin(self.previousAngle[18]) * -0.1) / ((1.3333333333333333 * self.cartMass) / self.poleMass + Double.cos(self.previousAngle[18]) * -1.0 + 1.3333333333333333)) + -1.0 * ((self.gravity * self.poleLength * self.cartMass * self.poleMass * Double.pow(Double.cos(self.previousAngle[18]), 3) * 0.1 * self.previousAngle[18] + Double.cos(self.previousAngle[18]) * -0.13333333333333333 * self.gravity * self.poleLength * self.cartMass * self.poleMass * self.previousAngle[18] + Double.cos(self.previousAngle[18]) * self.gravity * self.poleLength * Double.pow(self.cartMass, 2) * -0.13333333333333333 * self.previousAngle[18] + Double.cos(self.previousAngle[18]) * self.gravity * self.poleLength * self.cartMass * self.poleMass * Double.pow(Double.sin(self.previousAngle[18]), 2) * 0.2 * self.previousAngle[18]) / Double.pow(1.3333333333333333 * self.poleLength * self.cartMass + 1.3333333333333333 * self.poleLength * self.poleMass + self.poleLength * self.poleMass * Double.pow(Double.cos(self.previousAngle[18]), 2) * -1.0, 2)) + -1.0 * ((self.gravity * self.cartMass * Double.sin(self.previousAngle[18]) * 0.1) / (1.3333333333333333 * self.poleLength * self.cartMass + 1.3333333333333333 * self.poleLength * self.poleMass + self.poleLength * self.poleMass * Double.pow(Double.cos(self.previousAngle[18]), 2) * -1.0)) + -1.0 * ((Double.cos(self.previousAngle[18]) * -0.13333333333333333 * self.gravity * self.poleLength * self.cartMass * self.poleMass * self.previousAngle[18] + self.gravity * self.poleLength * Double.pow(self.poleMass, 2) * Double.pow(Double.cos(self.previousAngle[18]), 3) * 0.1 * self.previousAngle[18] + Double.cos(self.previousAngle[18]) * self.gravity * self.poleLength * Double.pow(self.poleMass, 2) * -0.13333333333333333 * self.previousAngle[18] + Double.cos(self.previousAngle[18]) * self.gravity * self.poleLength * Double.pow(self.poleMass, 2) * Double.pow(Double.sin(self.previousAngle[18]), 2) * 0.2 * self.previousAngle[18]) / Double.pow(1.3333333333333333 * self.poleLength * self.cartMass + 1.3333333333333333 * self.poleLength * self.poleMass + self.poleLength * self.poleMass * Double.pow(Double.cos(self.previousAngle[18]), 2) * -1.0, 2)) + -1.0 * ((self.gravity * self.poleMass * Double.sin(self.previousAngle[18]) * 0.1) / (1.3333333333333333 * self.poleLength * self.cartMass + 1.3333333333333333 * self.poleLength * self.poleMass + self.poleLength * self.poleMass * Double.pow(Double.cos(self.previousAngle[18]), 2) * -1.0)))
buffer[76] = -1.0 * 0.0
buffer[77] = -1.0 * (-1.0 * (((self.gravity * self.cartMass * Double.pow(Double.sin(self.previousAngle[19]), 2) * -0.13333333333333333 * self.previousAngle[19]) / self.poleMass + (self.gravity * self.cartMass * Double.pow(Double.cos(self.previousAngle[19]), 2) * 0.13333333333333333 * self.previousAngle[19]) / self.poleMass + self.gravity * Double.pow(Double.cos(self.previousAngle[19]), 4) * -0.1 * self.previousAngle[19] + self.gravity * Double.pow(Double.sin(self.previousAngle[19]), 2) * Double.pow(Double.cos(self.previousAngle[19]), 2) * -0.2 * self.previousAngle[19] + self.gravity * Double.pow(Double.sin(self.previousAngle[19]), 2) * Double.pow(Double.cos(self.previousAngle[19]), 2) * 0.1 * self.previousAngle[19] + self.gravity * Double.pow(Double.cos(self.previousAngle[19]), 2) * 0.13333333333333333 * self.previousAngle[19] + self.gravity * Double.pow(Double.sin(self.previousAngle[19]), 2) * -0.13333333333333333 * self.previousAngle[19]) / Double.pow((-1.3333333333333333 * self.cartMass) / self.poleMass + Double.pow(Double.cos(self.previousAngle[19]), 2) + -1.3333333333333333, 2)) + -1.0 * ((self.poleLength * Double.pow(self.previousAngularVelocity[19], 2) * Double.sin(self.previousAngle[19]) * -0.13333333333333333) / ((-1.3333333333333333 * self.cartMass) / self.poleMass + Double.pow(Double.cos(self.previousAngle[19]), 2) + -1.3333333333333333)) + -1.0 * ((self.poleLength * Double.pow(self.previousAngularVelocity[19], 2) * Double.sin(self.previousAngle[19]) * 0.26666666666666666) / ((-1.3333333333333333 * self.cartMass) / self.poleMass + Double.pow(Double.cos(self.previousAngle[19]), 2) + -1.3333333333333333)) + -1.0 * ((Double.cos(self.previousAngle[19]) * self.gravity * Double.sin(self.previousAngle[19]) * 0.1) / ((-1.3333333333333333 * self.cartMass) / self.poleMass + Double.pow(Double.cos(self.previousAngle[19]), 2) + -1.3333333333333333)))
buffer[78] = -1.0 * 0.0
buffer[79] = -1.0 * (-1.0 * ((Double.cos(self.previousAngle[19]) * self.gravity * self.poleLength * Double.pow(self.poleMass, 2) * -0.13333333333333333 * self.previousAngle[19] + self.gravity * self.poleLength * Double.pow(self.poleMass, 2) * Double.pow(Double.cos(self.previousAngle[19]), 3) * 0.1 * self.previousAngle[19] + Double.cos(self.previousAngle[19]) * -0.13333333333333333 * self.gravity * self.poleLength * self.cartMass * self.poleMass * self.previousAngle[19] + Double.cos(self.previousAngle[19]) * self.gravity * self.poleLength * Double.pow(Double.sin(self.previousAngle[19]), 2) * Double.pow(self.poleMass, 2) * 0.2 * self.previousAngle[19]) / Double.pow(self.poleLength * self.poleMass * Double.pow(Double.cos(self.previousAngle[19]), 2) * -1.0 + 1.3333333333333333 * self.poleLength * self.cartMass + 1.3333333333333333 * self.poleLength * self.poleMass, 2)) + -1.0 * ((Double.pow(self.previousAngularVelocity[19], 2) * Double.sin(self.previousAngle[19]) * -0.1) / ((1.3333333333333333 * self.cartMass) / self.poleMass + Double.cos(self.previousAngle[19]) * -1.0 + 1.3333333333333333)) + -1.0 * ((self.gravity * self.cartMass * Double.sin(self.previousAngle[19]) * 0.1) / (self.poleLength * self.poleMass * Double.pow(Double.cos(self.previousAngle[19]), 2) * -1.0 + 1.3333333333333333 * self.poleLength * self.cartMass + 1.3333333333333333 * self.poleLength * self.poleMass)) + -1.0 * ((Double.pow(self.previousAngularVelocity[19], 2) * Double.sin(self.previousAngle[19]) * 0.2) / ((1.3333333333333333 * self.cartMass) / self.poleMass + Double.cos(self.previousAngle[19]) * -1.0 + 1.3333333333333333)) + -1.0 * ((self.gravity * self.poleMass * Double.sin(self.previousAngle[19]) * 0.1) / (self.poleLength * self.poleMass * Double.pow(Double.cos(self.previousAngle[19]), 2) * -1.0 + 1.3333333333333333 * self.poleLength * self.cartMass + 1.3333333333333333 * self.poleLength * self.poleMass)) + -1.0 * ((Double.cos(self.previousAngle[19]) * self.gravity * self.poleLength * self.cartMass * self.poleMass * Double.pow(Double.sin(self.previousAngle[19]), 2) * 0.2 * self.previousAngle[19] + self.gravity * self.poleLength * self.cartMass * self.poleMass * Double.pow(Double.cos(self.previousAngle[19]), 3) * 0.1 * self.previousAngle[19] + Double.cos(self.previousAngle[19]) * -0.13333333333333333 * self.gravity * self.poleLength * self.cartMass * self.poleMass * self.previousAngle[19] + Double.cos(self.previousAngle[19]) * self.gravity * self.poleLength * Double.pow(self.cartMass, 2) * -0.13333333333333333 * self.previousAngle[19]) / Double.pow(self.poleLength * self.poleMass * Double.pow(Double.cos(self.previousAngle[19]), 2) * -1.0 + 1.3333333333333333 * self.poleLength * self.cartMass + 1.3333333333333333 * self.poleLength * self.poleMass, 2)))
})
return flat
}

//=================== Inequality Constraints Value ===================
@inlinable
func inequalityConstraintsValue(_ x: Vector) -> Double {
return Double.log(x[14] * -1.0 + 50.0) * -1.0 + Double.log(x[24] * -1.0 + 50.0) * -1.0 + Double.log(x[60] + 10.0) * -1.0 + Double.log(x[44] * -1.0 + 50.0) * -1.0 + Double.log(x[5] + 10.0) * -1.0 + Double.log(x[85] + 10.0) * -1.0 + Double.log(x[99] * -1.0 + 50.0) * -1.0 + Double.log(x[55] + 10.0) * -1.0 + Double.log(x[94] + 50.0) * -1.0 + Double.log(x[44] + 50.0) * -1.0 + Double.log(x[50] * -1.0 + 10.0) * -1.0 + Double.log(x[49] * -1.0 + 50.0) * -1.0 + Double.log(x[85] * -1.0 + 10.0) * -1.0 + Double.log(x[49] + 50.0) * -1.0 + Double.log(x[89] + 50.0) * -1.0 + Double.log(x[55] * -1.0 + 10.0) * -1.0 + Double.log(x[95] + 10.0) * -1.0 + Double.log(x[30] + 10.0) * -1.0 + Double.log(x[75] + 10.0) * -1.0 + Double.log(x[0] * -1.0 + 10.0) * -1.0 + Double.log(x[19] * -1.0 + 50.0) * -1.0 + Double.log(x[4] * -1.0 + 50.0) * -1.0 + Double.log(x[69] + 50.0) * -1.0 + Double.log(x[25] + 10.0) * -1.0 + Double.log(x[30] * -1.0 + 10.0) * -1.0 + Double.log(x[90] + 10.0) * -1.0 + Double.log(x[29] * -1.0 + 50.0) * -1.0 + Double.log(x[84] + 50.0) * -1.0 + Double.log(x[40] + 10.0) * -1.0 + Double.log(x[35] + 10.0) * -1.0 + Double.log(x[9] + 50.0) * -1.0 + Double.log(x[19] + 50.0) * -1.0 + Double.log(x[65] * -1.0 + 10.0) * -1.0 + Double.log(x[90] * -1.0 + 10.0) * -1.0 + Double.log(x[74] + 50.0) * -1.0 + Double.log(x[50] + 10.0) * -1.0 + Double.log(x[24] + 50.0) * -1.0 + Double.log(x[39] * -1.0 + 50.0) * -1.0 + Double.log(x[95] * -1.0 + 10.0) * -1.0 + Double.log(x[10] * -1.0 + 10.0) * -1.0 + Double.log(x[75] * -1.0 + 10.0) * -1.0 + Double.log(x[10] + 10.0) * -1.0 + Double.log(x[80] * -1.0 + 10.0) * -1.0 + Double.log(x[35] * -1.0 + 10.0) * -1.0 + Double.log(x[84] * -1.0 + 50.0) * -1.0 + Double.log(x[40] * -1.0 + 10.0) * -1.0 + Double.log(x[89] * -1.0 + 50.0) * -1.0 + Double.log(x[39] + 50.0) * -1.0 + Double.log(x[29] + 50.0) * -1.0 + Double.log(x[79] * -1.0 + 50.0) * -1.0 + Double.log(x[25] * -1.0 + 10.0) * -1.0 + Double.log(x[54] * -1.0 + 50.0) * -1.0 + Double.log(x[20] + 10.0) * -1.0 + Double.log(x[70] * -1.0 + 10.0) * -1.0 + Double.log(x[9] * -1.0 + 50.0) * -1.0 + Double.log(x[64] * -1.0 + 50.0) * -1.0 + Double.log(x[15] + 10.0) * -1.0 + Double.log(x[14] + 50.0) * -1.0 + Double.log(x[45] * -1.0 + 10.0) * -1.0 + Double.log(x[64] + 50.0) * -1.0 + Double.log(x[5] * -1.0 + 10.0) * -1.0 + Double.log(x[54] + 50.0) * -1.0 + Double.log(x[59] * -1.0 + 50.0) * -1.0 + Double.log(x[34] * -1.0 + 50.0) * -1.0 + Double.log(x[45] + 10.0) * -1.0 + Double.log(x[74] * -1.0 + 50.0) * -1.0 + Double.log(x[34] + 50.0) * -1.0 + Double.log(x[79] + 50.0) * -1.0 + Double.log(x[4] + 50.0) * -1.0 + Double.log(x[15] * -1.0 + 10.0) * -1.0 + Double.log(x[70] + 10.0) * -1.0 + Double.log(x[94] * -1.0 + 50.0) * -1.0 + Double.log(x[0] + 10.0) * -1.0 + Double.log(x[80] + 10.0) * -1.0 + Double.log(x[99] + 50.0) * -1.0 + Double.log(x[59] + 50.0) * -1.0 + Double.log(x[20] * -1.0 + 10.0) * -1.0 + Double.log(x[69] * -1.0 + 50.0) * -1.0 + Double.log(x[65] + 10.0) * -1.0 + Double.log(x[60] * -1.0 + 10.0) * -1.0
}

//=================== Inequality Constraints Gradient ===================
@inlinable
func inequalityConstraintsGradient(_ x: Vector) -> Vector {
var flat: Vector = zeros(100)
flat.withUnsafeMutableBufferPointer({ buffer in
buffer[0] = 1.0 / (x[0] * -1.0 + -10.0) + -1.0 / (x[0] + -10.0)
buffer[4] = -1.0 / (x[4] + -50.0) + 1.0 / (x[4] * -1.0 + -50.0)
buffer[5] = 1.0 / (x[5] * -1.0 + -10.0) + -1.0 / (x[5] + -10.0)
buffer[9] = 1.0 / (x[9] * -1.0 + -50.0) + -1.0 / (x[9] + -50.0)
buffer[10] = -1.0 / (x[10] + -10.0) + 1.0 / (x[10] * -1.0 + -10.0)
buffer[14] = 1.0 / (x[14] * -1.0 + -50.0) + -1.0 / (x[14] + -50.0)
buffer[15] = 1.0 / (x[15] * -1.0 + -10.0) + -1.0 / (x[15] + -10.0)
buffer[19] = 1.0 / (x[19] * -1.0 + -50.0) + -1.0 / (x[19] + -50.0)
buffer[20] = -1.0 / (x[20] + -10.0) + 1.0 / (x[20] * -1.0 + -10.0)
buffer[24] = -1.0 / (x[24] + -50.0) + 1.0 / (x[24] * -1.0 + -50.0)
buffer[25] = -1.0 / (x[25] + -10.0) + 1.0 / (x[25] * -1.0 + -10.0)
buffer[29] = -1.0 / (x[29] + -50.0) + 1.0 / (x[29] * -1.0 + -50.0)
buffer[30] = 1.0 / (x[30] * -1.0 + -10.0) + -1.0 / (x[30] + -10.0)
buffer[34] = 1.0 / (x[34] * -1.0 + -50.0) + -1.0 / (x[34] + -50.0)
buffer[35] = 1.0 / (x[35] * -1.0 + -10.0) + -1.0 / (x[35] + -10.0)
buffer[39] = 1.0 / (x[39] * -1.0 + -50.0) + -1.0 / (x[39] + -50.0)
buffer[40] = 1.0 / (x[40] * -1.0 + -10.0) + -1.0 / (x[40] + -10.0)
buffer[44] = -1.0 / (x[44] + -50.0) + 1.0 / (x[44] * -1.0 + -50.0)
buffer[45] = 1.0 / (x[45] * -1.0 + -10.0) + -1.0 / (x[45] + -10.0)
buffer[49] = 1.0 / (x[49] * -1.0 + -50.0) + -1.0 / (x[49] + -50.0)
buffer[50] = 1.0 / (x[50] * -1.0 + -10.0) + -1.0 / (x[50] + -10.0)
buffer[54] = 1.0 / (x[54] * -1.0 + -50.0) + -1.0 / (x[54] + -50.0)
buffer[55] = -1.0 / (x[55] + -10.0) + 1.0 / (x[55] * -1.0 + -10.0)
buffer[59] = -1.0 / (x[59] + -50.0) + 1.0 / (x[59] * -1.0 + -50.0)
buffer[60] = 1.0 / (x[60] * -1.0 + -10.0) + -1.0 / (x[60] + -10.0)
buffer[64] = 1.0 / (x[64] * -1.0 + -50.0) + -1.0 / (x[64] + -50.0)
buffer[65] = 1.0 / (x[65] * -1.0 + -10.0) + -1.0 / (x[65] + -10.0)
buffer[69] = 1.0 / (x[69] * -1.0 + -50.0) + -1.0 / (x[69] + -50.0)
buffer[70] = -1.0 / (x[70] + -10.0) + 1.0 / (x[70] * -1.0 + -10.0)
buffer[74] = 1.0 / (x[74] * -1.0 + -50.0) + -1.0 / (x[74] + -50.0)
buffer[75] = 1.0 / (x[75] * -1.0 + -10.0) + -1.0 / (x[75] + -10.0)
buffer[79] = 1.0 / (x[79] * -1.0 + -50.0) + -1.0 / (x[79] + -50.0)
buffer[80] = 1.0 / (x[80] * -1.0 + -10.0) + -1.0 / (x[80] + -10.0)
buffer[84] = -1.0 / (x[84] + -50.0) + 1.0 / (x[84] * -1.0 + -50.0)
buffer[85] = 1.0 / (x[85] * -1.0 + -10.0) + -1.0 / (x[85] + -10.0)
buffer[89] = 1.0 / (x[89] * -1.0 + -50.0) + -1.0 / (x[89] + -50.0)
buffer[90] = -1.0 / (x[90] + -10.0) + 1.0 / (x[90] * -1.0 + -10.0)
buffer[94] = 1.0 / (x[94] * -1.0 + -50.0) + -1.0 / (x[94] + -50.0)
buffer[95] = 1.0 / (x[95] * -1.0 + -10.0) + -1.0 / (x[95] + -10.0)
buffer[99] = -1.0 / (x[99] + -50.0) + 1.0 / (x[99] * -1.0 + -50.0)
})
return flat}

//=================== Inequality Constraints Hessians ===================
@inlinable
func inequalityConstraintsHessian(_ x: Vector) -> Matrix {
var flat: Vector = zeros(10000)
flat.withUnsafeMutableBufferPointer({ buffer in
buffer[0] = 1.0 / Double.pow(x[0] * -1.0 + -10.0, 2) + 1.0 / Double.pow(x[0] + -10.0, 2)
buffer[404] = 1.0 / Double.pow(x[4] + -50.0, 2) + 1.0 / Double.pow(x[4] * -1.0 + -50.0, 2)
buffer[505] = 1.0 / Double.pow(x[5] * -1.0 + -10.0, 2) + 1.0 / Double.pow(x[5] + -10.0, 2)
buffer[909] = 1.0 / Double.pow(x[9] + -50.0, 2) + 1.0 / Double.pow(x[9] * -1.0 + -50.0, 2)
buffer[1010] = 1.0 / Double.pow(x[10] + -10.0, 2) + 1.0 / Double.pow(x[10] * -1.0 + -10.0, 2)
buffer[1414] = 1.0 / Double.pow(x[14] * -1.0 + -50.0, 2) + 1.0 / Double.pow(x[14] + -50.0, 2)
buffer[1515] = 1.0 / Double.pow(x[15] + -10.0, 2) + 1.0 / Double.pow(x[15] * -1.0 + -10.0, 2)
buffer[1919] = 1.0 / Double.pow(x[19] * -1.0 + -50.0, 2) + 1.0 / Double.pow(x[19] + -50.0, 2)
buffer[2020] = 1.0 / Double.pow(x[20] + -10.0, 2) + 1.0 / Double.pow(x[20] * -1.0 + -10.0, 2)
buffer[2424] = 1.0 / Double.pow(x[24] + -50.0, 2) + 1.0 / Double.pow(x[24] * -1.0 + -50.0, 2)
buffer[2525] = 1.0 / Double.pow(x[25] * -1.0 + -10.0, 2) + 1.0 / Double.pow(x[25] + -10.0, 2)
buffer[2929] = 1.0 / Double.pow(x[29] + -50.0, 2) + 1.0 / Double.pow(x[29] * -1.0 + -50.0, 2)
buffer[3030] = 1.0 / Double.pow(x[30] + -10.0, 2) + 1.0 / Double.pow(x[30] * -1.0 + -10.0, 2)
buffer[3434] = 1.0 / Double.pow(x[34] + -50.0, 2) + 1.0 / Double.pow(x[34] * -1.0 + -50.0, 2)
buffer[3535] = 1.0 / Double.pow(x[35] * -1.0 + -10.0, 2) + 1.0 / Double.pow(x[35] + -10.0, 2)
buffer[3939] = 1.0 / Double.pow(x[39] * -1.0 + -50.0, 2) + 1.0 / Double.pow(x[39] + -50.0, 2)
buffer[4040] = 1.0 / Double.pow(x[40] * -1.0 + -10.0, 2) + 1.0 / Double.pow(x[40] + -10.0, 2)
buffer[4444] = 1.0 / Double.pow(x[44] + -50.0, 2) + 1.0 / Double.pow(x[44] * -1.0 + -50.0, 2)
buffer[4545] = 1.0 / Double.pow(x[45] * -1.0 + -10.0, 2) + 1.0 / Double.pow(x[45] + -10.0, 2)
buffer[4949] = 1.0 / Double.pow(x[49] + -50.0, 2) + 1.0 / Double.pow(x[49] * -1.0 + -50.0, 2)
buffer[5050] = 1.0 / Double.pow(x[50] + -10.0, 2) + 1.0 / Double.pow(x[50] * -1.0 + -10.0, 2)
buffer[5454] = 1.0 / Double.pow(x[54] + -50.0, 2) + 1.0 / Double.pow(x[54] * -1.0 + -50.0, 2)
buffer[5555] = 1.0 / Double.pow(x[55] + -10.0, 2) + 1.0 / Double.pow(x[55] * -1.0 + -10.0, 2)
buffer[5959] = 1.0 / Double.pow(x[59] * -1.0 + -50.0, 2) + 1.0 / Double.pow(x[59] + -50.0, 2)
buffer[6060] = 1.0 / Double.pow(x[60] + -10.0, 2) + 1.0 / Double.pow(x[60] * -1.0 + -10.0, 2)
buffer[6464] = 1.0 / Double.pow(x[64] * -1.0 + -50.0, 2) + 1.0 / Double.pow(x[64] + -50.0, 2)
buffer[6565] = 1.0 / Double.pow(x[65] * -1.0 + -10.0, 2) + 1.0 / Double.pow(x[65] + -10.0, 2)
buffer[6969] = 1.0 / Double.pow(x[69] + -50.0, 2) + 1.0 / Double.pow(x[69] * -1.0 + -50.0, 2)
buffer[7070] = 1.0 / Double.pow(x[70] + -10.0, 2) + 1.0 / Double.pow(x[70] * -1.0 + -10.0, 2)
buffer[7474] = 1.0 / Double.pow(x[74] * -1.0 + -50.0, 2) + 1.0 / Double.pow(x[74] + -50.0, 2)
buffer[7575] = 1.0 / Double.pow(x[75] * -1.0 + -10.0, 2) + 1.0 / Double.pow(x[75] + -10.0, 2)
buffer[7979] = 1.0 / Double.pow(x[79] * -1.0 + -50.0, 2) + 1.0 / Double.pow(x[79] + -50.0, 2)
buffer[8080] = 1.0 / Double.pow(x[80] * -1.0 + -10.0, 2) + 1.0 / Double.pow(x[80] + -10.0, 2)
buffer[8484] = 1.0 / Double.pow(x[84] * -1.0 + -50.0, 2) + 1.0 / Double.pow(x[84] + -50.0, 2)
buffer[8585] = 1.0 / Double.pow(x[85] + -10.0, 2) + 1.0 / Double.pow(x[85] * -1.0 + -10.0, 2)
buffer[8989] = 1.0 / Double.pow(x[89] + -50.0, 2) + 1.0 / Double.pow(x[89] * -1.0 + -50.0, 2)
buffer[9090] = 1.0 / Double.pow(x[90] + -10.0, 2) + 1.0 / Double.pow(x[90] * -1.0 + -10.0, 2)
buffer[9494] = 1.0 / Double.pow(x[94] + -50.0, 2) + 1.0 / Double.pow(x[94] * -1.0 + -50.0, 2)
buffer[9595] = 1.0 / Double.pow(x[95] + -10.0, 2) + 1.0 / Double.pow(x[95] * -1.0 + -10.0, 2)
buffer[9999] = 1.0 / Double.pow(x[99] * -1.0 + -50.0, 2) + 1.0 / Double.pow(x[99] + -50.0, 2)
})
return Matrix(100, 100, flat)}

}
#endif