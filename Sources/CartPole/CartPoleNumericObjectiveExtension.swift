#if !NO_NUMERIC_OBJECTIVE
import LASwift
import RealModule
import SwiftMPC


extension CartPoleNumericObjective: Objective {

var numVariables: Int { return 100 }
var numConstraints: Int { return 80 }

//=================== Extractors ===================

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

//=================== Objective Value ===================
@inlinable
func value(_ x: Vector) -> Double {
return Double.pow(x[52], 2) + Double.pow(x[42], 2) + Double.pow(x[67], 2) + Double.pow(x[65], 2) + Double.pow(x[12], 2) + Double.pow(x[5], 2) + Double.pow(x[70], 2) + Double.pow(x[60], 2) + Double.pow(x[30], 2) + Double.pow(x[82], 2) + Double.pow(x[10], 2) + Double.pow(x[40], 2) + Double.pow(x[92], 2) + Double.pow(x[87], 2) + Double.pow(x[27], 2) + Double.pow(x[80], 2) + Double.pow(x[17], 2) + Double.pow(x[97], 2) + Double.pow(x[85], 2) + Double.pow(x[32], 2) + Double.pow(x[45], 2) + Double.pow(x[20], 2) + Double.pow(x[62], 2) + Double.pow(x[57], 2) + Double.pow(x[77], 2) + Double.pow(x[22], 2) + Double.pow(x[95], 2) + Double.pow(x[55], 2) + Double.pow(x[0], 2) + Double.pow(x[75], 2) + Double.pow(x[72], 2) + Double.pow(x[50], 2) + Double.pow(x[37], 2) + Double.pow(x[90], 2) + Double.pow(x[7], 2) + Double.pow(x[15], 2) + Double.pow(x[35], 2) + Double.pow(x[25], 2) + Double.pow(x[47], 2) + Double.pow(x[2], 2)
}

//=================== Gradient Value ===================
@inlinable
func gradient(_ x: Vector) -> Vector {
var flat: Vector = zeros(100)
flat.withUnsafeMutableBufferPointer({ buffer in
buffer[0] = x[0] * 2.0
buffer[2] = x[2] * 2.0
buffer[5] = x[5] * 2.0
buffer[7] = x[7] * 2.0
buffer[10] = x[10] * 2.0
buffer[12] = x[12] * 2.0
buffer[15] = x[15] * 2.0
buffer[17] = x[17] * 2.0
buffer[20] = x[20] * 2.0
buffer[22] = x[22] * 2.0
buffer[25] = x[25] * 2.0
buffer[27] = x[27] * 2.0
buffer[30] = x[30] * 2.0
buffer[32] = x[32] * 2.0
buffer[35] = x[35] * 2.0
buffer[37] = x[37] * 2.0
buffer[40] = x[40] * 2.0
buffer[42] = x[42] * 2.0
buffer[45] = x[45] * 2.0
buffer[47] = x[47] * 2.0
buffer[50] = x[50] * 2.0
buffer[52] = x[52] * 2.0
buffer[55] = x[55] * 2.0
buffer[57] = x[57] * 2.0
buffer[60] = x[60] * 2.0
buffer[62] = x[62] * 2.0
buffer[65] = x[65] * 2.0
buffer[67] = x[67] * 2.0
buffer[70] = x[70] * 2.0
buffer[72] = x[72] * 2.0
buffer[75] = x[75] * 2.0
buffer[77] = x[77] * 2.0
buffer[80] = x[80] * 2.0
buffer[82] = x[82] * 2.0
buffer[85] = x[85] * 2.0
buffer[87] = x[87] * 2.0
buffer[90] = x[90] * 2.0
buffer[92] = x[92] * 2.0
buffer[95] = x[95] * 2.0
buffer[97] = x[97] * 2.0
})
return flat
}

//=================== Hessian Value ===================
@inlinable
func hessian(_ x: Vector) -> Matrix {
var flat: Vector = zeros(10000)
flat.withUnsafeMutableBufferPointer({ buffer in
buffer[0] = 2.0
buffer[202] = 2.0
buffer[505] = 2.0
buffer[707] = 2.0
buffer[1010] = 2.0
buffer[1212] = 2.0
buffer[1515] = 2.0
buffer[1717] = 2.0
buffer[2020] = 2.0
buffer[2222] = 2.0
buffer[2525] = 2.0
buffer[2727] = 2.0
buffer[3030] = 2.0
buffer[3232] = 2.0
buffer[3535] = 2.0
buffer[3737] = 2.0
buffer[4040] = 2.0
buffer[4242] = 2.0
buffer[4545] = 2.0
buffer[4747] = 2.0
buffer[5050] = 2.0
buffer[5252] = 2.0
buffer[5555] = 2.0
buffer[5757] = 2.0
buffer[6060] = 2.0
buffer[6262] = 2.0
buffer[6565] = 2.0
buffer[6767] = 2.0
buffer[7070] = 2.0
buffer[7272] = 2.0
buffer[7575] = 2.0
buffer[7777] = 2.0
buffer[8080] = 2.0
buffer[8282] = 2.0
buffer[8585] = 2.0
buffer[8787] = 2.0
buffer[9090] = 2.0
buffer[9292] = 2.0
buffer[9595] = 2.0
buffer[9797] = 2.0
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
buffer[501] = -1.0 * 1.0
buffer[502] = -1.0 * (((Double.cos(self.previousAngle[1]) * Double.sin(self.previousAngle[1])) / ((self.cartMass / self.poleMass + 1.0) * -1.3333333333333333 + Double.pow(Double.cos(self.previousAngle[1]), 2)) + ((Double.pow(Double.sin(self.previousAngle[1]), 2) * 2.0 * Double.pow(Double.cos(self.previousAngle[1]), 2) + ((self.cartMass / self.poleMass + 1.0) * -1.3333333333333333 + Double.pow(Double.cos(self.previousAngle[1]), 2)) * (Double.pow(Double.sin(self.previousAngle[1]), 2) * -1.0 + Double.pow(Double.cos(self.previousAngle[1]), 2))) * (-1.0 * self.previousAngle[1] + 1.0)) / Double.pow((self.cartMass / self.poleMass + 1.0) * -1.3333333333333333 + Double.pow(Double.cos(self.previousAngle[1]), 2), 2)) * 0.05 * self.gravity)
buffer[503] = -1.0 * (((2.0 * self.previousAngularVelocity[1] * (-1.0 * self.previousAngularVelocity[1] + 1.0) + Double.pow(self.previousAngularVelocity[1], 2)) * self.poleLength * Double.sin(self.previousAngle[1]) * -0.06666666666666667) / ((self.cartMass / self.poleMass + 1.0) * -1.3333333333333333 + Double.pow(Double.cos(self.previousAngle[1]), 2)))
buffer[504] = -1.0 * (-0.06666666666666667 / ((self.cartMass + self.poleMass) * -1.3333333333333333 + self.poleMass * Double.pow(Double.cos(self.previousAngle[1]), 2)))
buffer[506] = 1.0
buffer[602] = -1.0 * 1.0
buffer[603] = -1.0 * 0.05
buffer[607] = 1.0
buffer[702] = -1.0 * ((self.cartMass + self.poleMass) * (Double.sin(self.previousAngle[1]) / (self.poleMass * Double.pow(Double.cos(self.previousAngle[1]), 2) * -1.0 * self.poleLength + 1.3333333333333333 * self.poleLength * (self.cartMass + self.poleMass)) + ((self.poleLength * self.poleMass * Double.pow(Double.sin(self.previousAngle[1]), 2) * -2.0 * Double.cos(self.previousAngle[1]) + (self.poleMass * Double.pow(Double.cos(self.previousAngle[1]), 2) * -1.0 * self.poleLength + 1.3333333333333333 * self.poleLength * (self.cartMass + self.poleMass)) * Double.cos(self.previousAngle[1])) * (-1.0 * self.previousAngle[1] + 1.0)) / Double.pow(self.poleMass * Double.pow(Double.cos(self.previousAngle[1]), 2) * -1.0 * self.poleLength + 1.3333333333333333 * self.poleLength * (self.cartMass + self.poleMass), 2)) * 0.05 * self.gravity)
buffer[703] = -1.0 * (((2.0 * self.previousAngularVelocity[1] * (-1.0 * self.previousAngularVelocity[1] + 1.0) + Double.pow(self.previousAngularVelocity[1], 2)) * Double.sin(self.previousAngle[1]) * -0.05) / (Double.cos(self.previousAngle[1]) * -1.0 + (self.cartMass / self.poleMass + 1.0) * 1.3333333333333333) + 1.0)
buffer[704] = -1.0 * (-0.05 / (-1.0 * self.poleLength * self.poleMass * Double.cos(self.previousAngle[1]) + 1.3333333333333333 * self.poleLength * (self.cartMass + self.poleMass)))
buffer[708] = 1.0
buffer[805] = -1.0 * 1.0
buffer[806] = -1.0 * 0.05
buffer[810] = 1.0
buffer[906] = -1.0 * 1.0
buffer[907] = -1.0 * ((((-1.0 * self.previousAngle[2] + 1.0) * ((Double.pow(Double.sin(self.previousAngle[2]), 2) * -1.0 + Double.pow(Double.cos(self.previousAngle[2]), 2)) * ((self.cartMass / self.poleMass + 1.0) * -1.3333333333333333 + Double.pow(Double.cos(self.previousAngle[2]), 2)) + Double.pow(Double.cos(self.previousAngle[2]), 2) * 2.0 * Double.pow(Double.sin(self.previousAngle[2]), 2))) / Double.pow((self.cartMass / self.poleMass + 1.0) * -1.3333333333333333 + Double.pow(Double.cos(self.previousAngle[2]), 2), 2) + (Double.cos(self.previousAngle[2]) * Double.sin(self.previousAngle[2])) / ((self.cartMass / self.poleMass + 1.0) * -1.3333333333333333 + Double.pow(Double.cos(self.previousAngle[2]), 2))) * 0.05 * self.gravity)
buffer[908] = -1.0 * (((2.0 * self.previousAngularVelocity[2] * (-1.0 * self.previousAngularVelocity[2] + 1.0) + Double.pow(self.previousAngularVelocity[2], 2)) * self.poleLength * Double.sin(self.previousAngle[2]) * -0.06666666666666667) / ((self.cartMass / self.poleMass + 1.0) * -1.3333333333333333 + Double.pow(Double.cos(self.previousAngle[2]), 2)))
buffer[909] = -1.0 * (-0.06666666666666667 / (self.poleMass * Double.pow(Double.cos(self.previousAngle[2]), 2) + (self.cartMass + self.poleMass) * -1.3333333333333333))
buffer[911] = 1.0
buffer[1007] = -1.0 * 1.0
buffer[1008] = -1.0 * 0.05
buffer[1012] = 1.0
buffer[1107] = -1.0 * ((self.cartMass + self.poleMass) * (((-1.0 * self.previousAngle[2] + 1.0) * ((self.poleMass * Double.pow(Double.cos(self.previousAngle[2]), 2) * -1.0 * self.poleLength + 1.3333333333333333 * self.poleLength * (self.cartMass + self.poleMass)) * Double.cos(self.previousAngle[2]) + self.poleLength * self.poleMass * Double.pow(Double.sin(self.previousAngle[2]), 2) * -2.0 * Double.cos(self.previousAngle[2]))) / Double.pow(self.poleMass * Double.pow(Double.cos(self.previousAngle[2]), 2) * -1.0 * self.poleLength + 1.3333333333333333 * self.poleLength * (self.cartMass + self.poleMass), 2) + Double.sin(self.previousAngle[2]) / (self.poleMass * Double.pow(Double.cos(self.previousAngle[2]), 2) * -1.0 * self.poleLength + 1.3333333333333333 * self.poleLength * (self.cartMass + self.poleMass))) * 0.05 * self.gravity)
buffer[1108] = -1.0 * (((2.0 * self.previousAngularVelocity[2] * (-1.0 * self.previousAngularVelocity[2] + 1.0) + Double.pow(self.previousAngularVelocity[2], 2)) * Double.sin(self.previousAngle[2]) * -0.05) / (Double.cos(self.previousAngle[2]) * -1.0 + (self.cartMass / self.poleMass + 1.0) * 1.3333333333333333) + 1.0)
buffer[1109] = -1.0 * (-0.05 / (-1.0 * self.poleLength * self.poleMass * Double.cos(self.previousAngle[2]) + 1.3333333333333333 * self.poleLength * (self.cartMass + self.poleMass)))
buffer[1113] = 1.0
buffer[1210] = -1.0 * 1.0
buffer[1211] = -1.0 * 0.05
buffer[1215] = 1.0
buffer[1311] = -1.0 * 1.0
buffer[1312] = -1.0 * (((Double.cos(self.previousAngle[3]) * Double.sin(self.previousAngle[3])) / ((self.cartMass / self.poleMass + 1.0) * -1.3333333333333333 + Double.pow(Double.cos(self.previousAngle[3]), 2)) + ((Double.pow(Double.cos(self.previousAngle[3]), 2) * 2.0 * Double.pow(Double.sin(self.previousAngle[3]), 2) + ((self.cartMass / self.poleMass + 1.0) * -1.3333333333333333 + Double.pow(Double.cos(self.previousAngle[3]), 2)) * (Double.pow(Double.sin(self.previousAngle[3]), 2) * -1.0 + Double.pow(Double.cos(self.previousAngle[3]), 2))) * (-1.0 * self.previousAngle[3] + 1.0)) / Double.pow((self.cartMass / self.poleMass + 1.0) * -1.3333333333333333 + Double.pow(Double.cos(self.previousAngle[3]), 2), 2)) * 0.05 * self.gravity)
buffer[1313] = -1.0 * (((2.0 * self.previousAngularVelocity[3] * (-1.0 * self.previousAngularVelocity[3] + 1.0) + Double.pow(self.previousAngularVelocity[3], 2)) * self.poleLength * Double.sin(self.previousAngle[3]) * -0.06666666666666667) / ((self.cartMass / self.poleMass + 1.0) * -1.3333333333333333 + Double.pow(Double.cos(self.previousAngle[3]), 2)))
buffer[1314] = -1.0 * (-0.06666666666666667 / (self.poleMass * Double.pow(Double.cos(self.previousAngle[3]), 2) + (self.cartMass + self.poleMass) * -1.3333333333333333))
buffer[1316] = 1.0
buffer[1412] = -1.0 * 1.0
buffer[1413] = -1.0 * 0.05
buffer[1417] = 1.0
buffer[1512] = -1.0 * ((self.cartMass + self.poleMass) * ((((self.poleMass * Double.pow(Double.cos(self.previousAngle[3]), 2) * -1.0 * self.poleLength + 1.3333333333333333 * self.poleLength * (self.cartMass + self.poleMass)) * Double.cos(self.previousAngle[3]) + self.poleLength * self.poleMass * Double.pow(Double.sin(self.previousAngle[3]), 2) * -2.0 * Double.cos(self.previousAngle[3])) * (-1.0 * self.previousAngle[3] + 1.0)) / Double.pow(self.poleMass * Double.pow(Double.cos(self.previousAngle[3]), 2) * -1.0 * self.poleLength + 1.3333333333333333 * self.poleLength * (self.cartMass + self.poleMass), 2) + Double.sin(self.previousAngle[3]) / (self.poleMass * Double.pow(Double.cos(self.previousAngle[3]), 2) * -1.0 * self.poleLength + 1.3333333333333333 * self.poleLength * (self.cartMass + self.poleMass))) * 0.05 * self.gravity)
buffer[1513] = -1.0 * (((2.0 * self.previousAngularVelocity[3] * (-1.0 * self.previousAngularVelocity[3] + 1.0) + Double.pow(self.previousAngularVelocity[3], 2)) * Double.sin(self.previousAngle[3]) * -0.05) / (Double.cos(self.previousAngle[3]) * -1.0 + (self.cartMass / self.poleMass + 1.0) * 1.3333333333333333) + 1.0)
buffer[1514] = -1.0 * (-0.05 / (-1.0 * self.poleLength * self.poleMass * Double.cos(self.previousAngle[3]) + 1.3333333333333333 * self.poleLength * (self.cartMass + self.poleMass)))
buffer[1518] = 1.0
buffer[1615] = -1.0 * 1.0
buffer[1616] = -1.0 * 0.05
buffer[1620] = 1.0
buffer[1716] = -1.0 * 1.0
buffer[1717] = -1.0 * ((((-1.0 * self.previousAngle[4] + 1.0) * (Double.pow(Double.sin(self.previousAngle[4]), 2) * 2.0 * Double.pow(Double.cos(self.previousAngle[4]), 2) + (Double.pow(Double.sin(self.previousAngle[4]), 2) * -1.0 + Double.pow(Double.cos(self.previousAngle[4]), 2)) * ((self.cartMass / self.poleMass + 1.0) * -1.3333333333333333 + Double.pow(Double.cos(self.previousAngle[4]), 2)))) / Double.pow((self.cartMass / self.poleMass + 1.0) * -1.3333333333333333 + Double.pow(Double.cos(self.previousAngle[4]), 2), 2) + (Double.cos(self.previousAngle[4]) * Double.sin(self.previousAngle[4])) / ((self.cartMass / self.poleMass + 1.0) * -1.3333333333333333 + Double.pow(Double.cos(self.previousAngle[4]), 2))) * 0.05 * self.gravity)
buffer[1718] = -1.0 * (((2.0 * self.previousAngularVelocity[4] * (-1.0 * self.previousAngularVelocity[4] + 1.0) + Double.pow(self.previousAngularVelocity[4], 2)) * self.poleLength * Double.sin(self.previousAngle[4]) * -0.06666666666666667) / ((self.cartMass / self.poleMass + 1.0) * -1.3333333333333333 + Double.pow(Double.cos(self.previousAngle[4]), 2)))
buffer[1719] = -1.0 * (-0.06666666666666667 / (self.poleMass * Double.pow(Double.cos(self.previousAngle[4]), 2) + (self.cartMass + self.poleMass) * -1.3333333333333333))
buffer[1721] = 1.0
buffer[1817] = -1.0 * 1.0
buffer[1818] = -1.0 * 0.05
buffer[1822] = 1.0
buffer[1917] = -1.0 * ((self.cartMass + self.poleMass) * (Double.sin(self.previousAngle[4]) / (self.poleMass * Double.pow(Double.cos(self.previousAngle[4]), 2) * -1.0 * self.poleLength + 1.3333333333333333 * self.poleLength * (self.cartMass + self.poleMass)) + ((self.poleLength * self.poleMass * Double.pow(Double.sin(self.previousAngle[4]), 2) * -2.0 * Double.cos(self.previousAngle[4]) + (self.poleMass * Double.pow(Double.cos(self.previousAngle[4]), 2) * -1.0 * self.poleLength + 1.3333333333333333 * self.poleLength * (self.cartMass + self.poleMass)) * Double.cos(self.previousAngle[4])) * (-1.0 * self.previousAngle[4] + 1.0)) / Double.pow(self.poleMass * Double.pow(Double.cos(self.previousAngle[4]), 2) * -1.0 * self.poleLength + 1.3333333333333333 * self.poleLength * (self.cartMass + self.poleMass), 2)) * 0.05 * self.gravity)
buffer[1918] = -1.0 * (((2.0 * self.previousAngularVelocity[4] * (-1.0 * self.previousAngularVelocity[4] + 1.0) + Double.pow(self.previousAngularVelocity[4], 2)) * Double.sin(self.previousAngle[4]) * -0.05) / ((self.cartMass / self.poleMass + 1.0) * 1.3333333333333333 + Double.cos(self.previousAngle[4]) * -1.0) + 1.0)
buffer[1919] = -1.0 * (-0.05 / (-1.0 * self.poleLength * self.poleMass * Double.cos(self.previousAngle[4]) + 1.3333333333333333 * self.poleLength * (self.cartMass + self.poleMass)))
buffer[1923] = 1.0
buffer[2020] = -1.0 * 1.0
buffer[2021] = -1.0 * 0.05
buffer[2025] = 1.0
buffer[2121] = -1.0 * 1.0
buffer[2122] = -1.0 * (((Double.cos(self.previousAngle[5]) * Double.sin(self.previousAngle[5])) / ((self.cartMass / self.poleMass + 1.0) * -1.3333333333333333 + Double.pow(Double.cos(self.previousAngle[5]), 2)) + (((Double.pow(Double.sin(self.previousAngle[5]), 2) * -1.0 + Double.pow(Double.cos(self.previousAngle[5]), 2)) * ((self.cartMass / self.poleMass + 1.0) * -1.3333333333333333 + Double.pow(Double.cos(self.previousAngle[5]), 2)) + Double.pow(Double.cos(self.previousAngle[5]), 2) * 2.0 * Double.pow(Double.sin(self.previousAngle[5]), 2)) * (-1.0 * self.previousAngle[5] + 1.0)) / Double.pow((self.cartMass / self.poleMass + 1.0) * -1.3333333333333333 + Double.pow(Double.cos(self.previousAngle[5]), 2), 2)) * 0.05 * self.gravity)
buffer[2123] = -1.0 * (((2.0 * self.previousAngularVelocity[5] * (-1.0 * self.previousAngularVelocity[5] + 1.0) + Double.pow(self.previousAngularVelocity[5], 2)) * self.poleLength * Double.sin(self.previousAngle[5]) * -0.06666666666666667) / ((self.cartMass / self.poleMass + 1.0) * -1.3333333333333333 + Double.pow(Double.cos(self.previousAngle[5]), 2)))
buffer[2124] = -1.0 * (-0.06666666666666667 / ((self.cartMass + self.poleMass) * -1.3333333333333333 + self.poleMass * Double.pow(Double.cos(self.previousAngle[5]), 2)))
buffer[2126] = 1.0
buffer[2222] = -1.0 * 1.0
buffer[2223] = -1.0 * 0.05
buffer[2227] = 1.0
buffer[2322] = -1.0 * ((self.cartMass + self.poleMass) * (Double.sin(self.previousAngle[5]) / (self.poleMass * Double.pow(Double.cos(self.previousAngle[5]), 2) * -1.0 * self.poleLength + 1.3333333333333333 * self.poleLength * (self.cartMass + self.poleMass)) + (((self.poleMass * Double.pow(Double.cos(self.previousAngle[5]), 2) * -1.0 * self.poleLength + 1.3333333333333333 * self.poleLength * (self.cartMass + self.poleMass)) * Double.cos(self.previousAngle[5]) + self.poleLength * self.poleMass * Double.pow(Double.sin(self.previousAngle[5]), 2) * -2.0 * Double.cos(self.previousAngle[5])) * (-1.0 * self.previousAngle[5] + 1.0)) / Double.pow(self.poleMass * Double.pow(Double.cos(self.previousAngle[5]), 2) * -1.0 * self.poleLength + 1.3333333333333333 * self.poleLength * (self.cartMass + self.poleMass), 2)) * 0.05 * self.gravity)
buffer[2323] = -1.0 * (((2.0 * self.previousAngularVelocity[5] * (-1.0 * self.previousAngularVelocity[5] + 1.0) + Double.pow(self.previousAngularVelocity[5], 2)) * Double.sin(self.previousAngle[5]) * -0.05) / (Double.cos(self.previousAngle[5]) * -1.0 + (self.cartMass / self.poleMass + 1.0) * 1.3333333333333333) + 1.0)
buffer[2324] = -1.0 * (-0.05 / (-1.0 * self.poleLength * self.poleMass * Double.cos(self.previousAngle[5]) + 1.3333333333333333 * self.poleLength * (self.cartMass + self.poleMass)))
buffer[2328] = 1.0
buffer[2425] = -1.0 * 1.0
buffer[2426] = -1.0 * 0.05
buffer[2430] = 1.0
buffer[2526] = -1.0 * 1.0
buffer[2527] = -1.0 * (((Double.cos(self.previousAngle[6]) * Double.sin(self.previousAngle[6])) / ((self.cartMass / self.poleMass + 1.0) * -1.3333333333333333 + Double.pow(Double.cos(self.previousAngle[6]), 2)) + ((-1.0 * self.previousAngle[6] + 1.0) * ((Double.pow(Double.sin(self.previousAngle[6]), 2) * -1.0 + Double.pow(Double.cos(self.previousAngle[6]), 2)) * ((self.cartMass / self.poleMass + 1.0) * -1.3333333333333333 + Double.pow(Double.cos(self.previousAngle[6]), 2)) + Double.pow(Double.sin(self.previousAngle[6]), 2) * 2.0 * Double.pow(Double.cos(self.previousAngle[6]), 2))) / Double.pow((self.cartMass / self.poleMass + 1.0) * -1.3333333333333333 + Double.pow(Double.cos(self.previousAngle[6]), 2), 2)) * 0.05 * self.gravity)
buffer[2528] = -1.0 * (((2.0 * self.previousAngularVelocity[6] * (-1.0 * self.previousAngularVelocity[6] + 1.0) + Double.pow(self.previousAngularVelocity[6], 2)) * self.poleLength * Double.sin(self.previousAngle[6]) * -0.06666666666666667) / ((self.cartMass / self.poleMass + 1.0) * -1.3333333333333333 + Double.pow(Double.cos(self.previousAngle[6]), 2)))
buffer[2529] = -1.0 * (-0.06666666666666667 / (self.poleMass * Double.pow(Double.cos(self.previousAngle[6]), 2) + (self.cartMass + self.poleMass) * -1.3333333333333333))
buffer[2531] = 1.0
buffer[2627] = -1.0 * 1.0
buffer[2628] = -1.0 * 0.05
buffer[2632] = 1.0
buffer[2727] = -1.0 * ((self.cartMass + self.poleMass) * (((-1.0 * self.previousAngle[6] + 1.0) * (self.poleLength * self.poleMass * Double.pow(Double.sin(self.previousAngle[6]), 2) * -2.0 * Double.cos(self.previousAngle[6]) + (self.poleMass * Double.pow(Double.cos(self.previousAngle[6]), 2) * -1.0 * self.poleLength + 1.3333333333333333 * self.poleLength * (self.cartMass + self.poleMass)) * Double.cos(self.previousAngle[6]))) / Double.pow(self.poleMass * Double.pow(Double.cos(self.previousAngle[6]), 2) * -1.0 * self.poleLength + 1.3333333333333333 * self.poleLength * (self.cartMass + self.poleMass), 2) + Double.sin(self.previousAngle[6]) / (self.poleMass * Double.pow(Double.cos(self.previousAngle[6]), 2) * -1.0 * self.poleLength + 1.3333333333333333 * self.poleLength * (self.cartMass + self.poleMass))) * 0.05 * self.gravity)
buffer[2728] = -1.0 * (((2.0 * self.previousAngularVelocity[6] * (-1.0 * self.previousAngularVelocity[6] + 1.0) + Double.pow(self.previousAngularVelocity[6], 2)) * Double.sin(self.previousAngle[6]) * -0.05) / (Double.cos(self.previousAngle[6]) * -1.0 + (self.cartMass / self.poleMass + 1.0) * 1.3333333333333333) + 1.0)
buffer[2729] = -1.0 * (-0.05 / (-1.0 * self.poleLength * self.poleMass * Double.cos(self.previousAngle[6]) + 1.3333333333333333 * self.poleLength * (self.cartMass + self.poleMass)))
buffer[2733] = 1.0
buffer[2830] = -1.0 * 1.0
buffer[2831] = -1.0 * 0.05
buffer[2835] = 1.0
buffer[2931] = -1.0 * 1.0
buffer[2932] = -1.0 * (((Double.cos(self.previousAngle[7]) * Double.sin(self.previousAngle[7])) / ((self.cartMass / self.poleMass + 1.0) * -1.3333333333333333 + Double.pow(Double.cos(self.previousAngle[7]), 2)) + ((((self.cartMass / self.poleMass + 1.0) * -1.3333333333333333 + Double.pow(Double.cos(self.previousAngle[7]), 2)) * (Double.pow(Double.sin(self.previousAngle[7]), 2) * -1.0 + Double.pow(Double.cos(self.previousAngle[7]), 2)) + Double.pow(Double.sin(self.previousAngle[7]), 2) * 2.0 * Double.pow(Double.cos(self.previousAngle[7]), 2)) * (-1.0 * self.previousAngle[7] + 1.0)) / Double.pow((self.cartMass / self.poleMass + 1.0) * -1.3333333333333333 + Double.pow(Double.cos(self.previousAngle[7]), 2), 2)) * 0.05 * self.gravity)
buffer[2933] = -1.0 * (((2.0 * self.previousAngularVelocity[7] * (-1.0 * self.previousAngularVelocity[7] + 1.0) + Double.pow(self.previousAngularVelocity[7], 2)) * self.poleLength * Double.sin(self.previousAngle[7]) * -0.06666666666666667) / ((self.cartMass / self.poleMass + 1.0) * -1.3333333333333333 + Double.pow(Double.cos(self.previousAngle[7]), 2)))
buffer[2934] = -1.0 * (-0.06666666666666667 / (self.poleMass * Double.pow(Double.cos(self.previousAngle[7]), 2) + (self.cartMass + self.poleMass) * -1.3333333333333333))
buffer[2936] = 1.0
buffer[3032] = -1.0 * 1.0
buffer[3033] = -1.0 * 0.05
buffer[3037] = 1.0
buffer[3132] = -1.0 * ((self.cartMass + self.poleMass) * (((-1.0 * self.previousAngle[7] + 1.0) * (self.poleLength * self.poleMass * Double.pow(Double.sin(self.previousAngle[7]), 2) * -2.0 * Double.cos(self.previousAngle[7]) + (self.poleMass * Double.pow(Double.cos(self.previousAngle[7]), 2) * -1.0 * self.poleLength + 1.3333333333333333 * self.poleLength * (self.cartMass + self.poleMass)) * Double.cos(self.previousAngle[7]))) / Double.pow(self.poleMass * Double.pow(Double.cos(self.previousAngle[7]), 2) * -1.0 * self.poleLength + 1.3333333333333333 * self.poleLength * (self.cartMass + self.poleMass), 2) + Double.sin(self.previousAngle[7]) / (self.poleMass * Double.pow(Double.cos(self.previousAngle[7]), 2) * -1.0 * self.poleLength + 1.3333333333333333 * self.poleLength * (self.cartMass + self.poleMass))) * 0.05 * self.gravity)
buffer[3133] = -1.0 * (((2.0 * self.previousAngularVelocity[7] * (-1.0 * self.previousAngularVelocity[7] + 1.0) + Double.pow(self.previousAngularVelocity[7], 2)) * Double.sin(self.previousAngle[7]) * -0.05) / (Double.cos(self.previousAngle[7]) * -1.0 + (self.cartMass / self.poleMass + 1.0) * 1.3333333333333333) + 1.0)
buffer[3134] = -1.0 * (-0.05 / (-1.0 * self.poleLength * self.poleMass * Double.cos(self.previousAngle[7]) + 1.3333333333333333 * self.poleLength * (self.cartMass + self.poleMass)))
buffer[3138] = 1.0
buffer[3235] = -1.0 * 1.0
buffer[3236] = -1.0 * 0.05
buffer[3240] = 1.0
buffer[3336] = -1.0 * 1.0
buffer[3337] = -1.0 * ((((-1.0 * self.previousAngle[8] + 1.0) * ((Double.pow(Double.sin(self.previousAngle[8]), 2) * -1.0 + Double.pow(Double.cos(self.previousAngle[8]), 2)) * ((self.cartMass / self.poleMass + 1.0) * -1.3333333333333333 + Double.pow(Double.cos(self.previousAngle[8]), 2)) + Double.pow(Double.cos(self.previousAngle[8]), 2) * 2.0 * Double.pow(Double.sin(self.previousAngle[8]), 2))) / Double.pow((self.cartMass / self.poleMass + 1.0) * -1.3333333333333333 + Double.pow(Double.cos(self.previousAngle[8]), 2), 2) + (Double.cos(self.previousAngle[8]) * Double.sin(self.previousAngle[8])) / ((self.cartMass / self.poleMass + 1.0) * -1.3333333333333333 + Double.pow(Double.cos(self.previousAngle[8]), 2))) * 0.05 * self.gravity)
buffer[3338] = -1.0 * (((2.0 * self.previousAngularVelocity[8] * (-1.0 * self.previousAngularVelocity[8] + 1.0) + Double.pow(self.previousAngularVelocity[8], 2)) * self.poleLength * Double.sin(self.previousAngle[8]) * -0.06666666666666667) / ((self.cartMass / self.poleMass + 1.0) * -1.3333333333333333 + Double.pow(Double.cos(self.previousAngle[8]), 2)))
buffer[3339] = -1.0 * (-0.06666666666666667 / ((self.cartMass + self.poleMass) * -1.3333333333333333 + self.poleMass * Double.pow(Double.cos(self.previousAngle[8]), 2)))
buffer[3341] = 1.0
buffer[3437] = -1.0 * 1.0
buffer[3438] = -1.0 * 0.05
buffer[3442] = 1.0
buffer[3537] = -1.0 * ((self.cartMass + self.poleMass) * (Double.sin(self.previousAngle[8]) / (self.poleMass * Double.pow(Double.cos(self.previousAngle[8]), 2) * -1.0 * self.poleLength + 1.3333333333333333 * self.poleLength * (self.cartMass + self.poleMass)) + (((self.poleMass * Double.pow(Double.cos(self.previousAngle[8]), 2) * -1.0 * self.poleLength + 1.3333333333333333 * self.poleLength * (self.cartMass + self.poleMass)) * Double.cos(self.previousAngle[8]) + self.poleLength * self.poleMass * Double.pow(Double.sin(self.previousAngle[8]), 2) * -2.0 * Double.cos(self.previousAngle[8])) * (-1.0 * self.previousAngle[8] + 1.0)) / Double.pow(self.poleMass * Double.pow(Double.cos(self.previousAngle[8]), 2) * -1.0 * self.poleLength + 1.3333333333333333 * self.poleLength * (self.cartMass + self.poleMass), 2)) * 0.05 * self.gravity)
buffer[3538] = -1.0 * (((2.0 * self.previousAngularVelocity[8] * (-1.0 * self.previousAngularVelocity[8] + 1.0) + Double.pow(self.previousAngularVelocity[8], 2)) * Double.sin(self.previousAngle[8]) * -0.05) / (Double.cos(self.previousAngle[8]) * -1.0 + (self.cartMass / self.poleMass + 1.0) * 1.3333333333333333) + 1.0)
buffer[3539] = -1.0 * (-0.05 / (-1.0 * self.poleLength * self.poleMass * Double.cos(self.previousAngle[8]) + 1.3333333333333333 * self.poleLength * (self.cartMass + self.poleMass)))
buffer[3543] = 1.0
buffer[3640] = -1.0 * 1.0
buffer[3641] = -1.0 * 0.05
buffer[3645] = 1.0
buffer[3741] = -1.0 * 1.0
buffer[3742] = -1.0 * ((((Double.pow(Double.cos(self.previousAngle[9]), 2) * 2.0 * Double.pow(Double.sin(self.previousAngle[9]), 2) + (Double.pow(Double.sin(self.previousAngle[9]), 2) * -1.0 + Double.pow(Double.cos(self.previousAngle[9]), 2)) * ((self.cartMass / self.poleMass + 1.0) * -1.3333333333333333 + Double.pow(Double.cos(self.previousAngle[9]), 2))) * (-1.0 * self.previousAngle[9] + 1.0)) / Double.pow((self.cartMass / self.poleMass + 1.0) * -1.3333333333333333 + Double.pow(Double.cos(self.previousAngle[9]), 2), 2) + (Double.cos(self.previousAngle[9]) * Double.sin(self.previousAngle[9])) / ((self.cartMass / self.poleMass + 1.0) * -1.3333333333333333 + Double.pow(Double.cos(self.previousAngle[9]), 2))) * 0.05 * self.gravity)
buffer[3743] = -1.0 * (((2.0 * self.previousAngularVelocity[9] * (-1.0 * self.previousAngularVelocity[9] + 1.0) + Double.pow(self.previousAngularVelocity[9], 2)) * self.poleLength * Double.sin(self.previousAngle[9]) * -0.06666666666666667) / ((self.cartMass / self.poleMass + 1.0) * -1.3333333333333333 + Double.pow(Double.cos(self.previousAngle[9]), 2)))
buffer[3744] = -1.0 * (-0.06666666666666667 / (self.poleMass * Double.pow(Double.cos(self.previousAngle[9]), 2) + (self.cartMass + self.poleMass) * -1.3333333333333333))
buffer[3746] = 1.0
buffer[3842] = -1.0 * 1.0
buffer[3843] = -1.0 * 0.05
buffer[3847] = 1.0
buffer[3942] = -1.0 * ((self.cartMass + self.poleMass) * (Double.sin(self.previousAngle[9]) / (self.poleMass * Double.pow(Double.cos(self.previousAngle[9]), 2) * -1.0 * self.poleLength + 1.3333333333333333 * self.poleLength * (self.cartMass + self.poleMass)) + ((self.poleLength * self.poleMass * Double.pow(Double.sin(self.previousAngle[9]), 2) * -2.0 * Double.cos(self.previousAngle[9]) + (self.poleMass * Double.pow(Double.cos(self.previousAngle[9]), 2) * -1.0 * self.poleLength + 1.3333333333333333 * self.poleLength * (self.cartMass + self.poleMass)) * Double.cos(self.previousAngle[9])) * (-1.0 * self.previousAngle[9] + 1.0)) / Double.pow(self.poleMass * Double.pow(Double.cos(self.previousAngle[9]), 2) * -1.0 * self.poleLength + 1.3333333333333333 * self.poleLength * (self.cartMass + self.poleMass), 2)) * 0.05 * self.gravity)
buffer[3943] = -1.0 * (((2.0 * self.previousAngularVelocity[9] * (-1.0 * self.previousAngularVelocity[9] + 1.0) + Double.pow(self.previousAngularVelocity[9], 2)) * Double.sin(self.previousAngle[9]) * -0.05) / (Double.cos(self.previousAngle[9]) * -1.0 + (self.cartMass / self.poleMass + 1.0) * 1.3333333333333333) + 1.0)
buffer[3944] = -1.0 * (-0.05 / (-1.0 * self.poleLength * self.poleMass * Double.cos(self.previousAngle[9]) + 1.3333333333333333 * self.poleLength * (self.cartMass + self.poleMass)))
buffer[3948] = 1.0
buffer[4045] = -1.0 * 1.0
buffer[4046] = -1.0 * 0.05
buffer[4050] = 1.0
buffer[4146] = -1.0 * 1.0
buffer[4147] = -1.0 * ((((Double.pow(Double.sin(self.previousAngle[10]), 2) * 2.0 * Double.pow(Double.cos(self.previousAngle[10]), 2) + ((self.cartMass / self.poleMass + 1.0) * -1.3333333333333333 + Double.pow(Double.cos(self.previousAngle[10]), 2)) * (Double.pow(Double.sin(self.previousAngle[10]), 2) * -1.0 + Double.pow(Double.cos(self.previousAngle[10]), 2))) * (-1.0 * self.previousAngle[10] + 1.0)) / Double.pow((self.cartMass / self.poleMass + 1.0) * -1.3333333333333333 + Double.pow(Double.cos(self.previousAngle[10]), 2), 2) + (Double.cos(self.previousAngle[10]) * Double.sin(self.previousAngle[10])) / ((self.cartMass / self.poleMass + 1.0) * -1.3333333333333333 + Double.pow(Double.cos(self.previousAngle[10]), 2))) * 0.05 * self.gravity)
buffer[4148] = -1.0 * (((2.0 * self.previousAngularVelocity[10] * (-1.0 * self.previousAngularVelocity[10] + 1.0) + Double.pow(self.previousAngularVelocity[10], 2)) * self.poleLength * Double.sin(self.previousAngle[10]) * -0.06666666666666667) / ((self.cartMass / self.poleMass + 1.0) * -1.3333333333333333 + Double.pow(Double.cos(self.previousAngle[10]), 2)))
buffer[4149] = -1.0 * (-0.06666666666666667 / (self.poleMass * Double.pow(Double.cos(self.previousAngle[10]), 2) + (self.cartMass + self.poleMass) * -1.3333333333333333))
buffer[4151] = 1.0
buffer[4247] = -1.0 * 1.0
buffer[4248] = -1.0 * 0.05
buffer[4252] = 1.0
buffer[4347] = -1.0 * ((self.cartMass + self.poleMass) * ((((self.poleMass * Double.pow(Double.cos(self.previousAngle[10]), 2) * -1.0 * self.poleLength + 1.3333333333333333 * self.poleLength * (self.cartMass + self.poleMass)) * Double.cos(self.previousAngle[10]) + self.poleLength * self.poleMass * Double.pow(Double.sin(self.previousAngle[10]), 2) * -2.0 * Double.cos(self.previousAngle[10])) * (-1.0 * self.previousAngle[10] + 1.0)) / Double.pow(self.poleMass * Double.pow(Double.cos(self.previousAngle[10]), 2) * -1.0 * self.poleLength + 1.3333333333333333 * self.poleLength * (self.cartMass + self.poleMass), 2) + Double.sin(self.previousAngle[10]) / (self.poleMass * Double.pow(Double.cos(self.previousAngle[10]), 2) * -1.0 * self.poleLength + 1.3333333333333333 * self.poleLength * (self.cartMass + self.poleMass))) * 0.05 * self.gravity)
buffer[4348] = -1.0 * (((2.0 * self.previousAngularVelocity[10] * (-1.0 * self.previousAngularVelocity[10] + 1.0) + Double.pow(self.previousAngularVelocity[10], 2)) * Double.sin(self.previousAngle[10]) * -0.05) / (Double.cos(self.previousAngle[10]) * -1.0 + (self.cartMass / self.poleMass + 1.0) * 1.3333333333333333) + 1.0)
buffer[4349] = -1.0 * (-0.05 / (-1.0 * self.poleLength * self.poleMass * Double.cos(self.previousAngle[10]) + 1.3333333333333333 * self.poleLength * (self.cartMass + self.poleMass)))
buffer[4353] = 1.0
buffer[4450] = -1.0 * 1.0
buffer[4451] = -1.0 * 0.05
buffer[4455] = 1.0
buffer[4551] = -1.0 * 1.0
buffer[4552] = -1.0 * (((Double.cos(self.previousAngle[11]) * Double.sin(self.previousAngle[11])) / ((self.cartMass / self.poleMass + 1.0) * -1.3333333333333333 + Double.pow(Double.cos(self.previousAngle[11]), 2)) + (((Double.pow(Double.sin(self.previousAngle[11]), 2) * -1.0 + Double.pow(Double.cos(self.previousAngle[11]), 2)) * ((self.cartMass / self.poleMass + 1.0) * -1.3333333333333333 + Double.pow(Double.cos(self.previousAngle[11]), 2)) + Double.pow(Double.cos(self.previousAngle[11]), 2) * 2.0 * Double.pow(Double.sin(self.previousAngle[11]), 2)) * (-1.0 * self.previousAngle[11] + 1.0)) / Double.pow((self.cartMass / self.poleMass + 1.0) * -1.3333333333333333 + Double.pow(Double.cos(self.previousAngle[11]), 2), 2)) * 0.05 * self.gravity)
buffer[4553] = -1.0 * (((2.0 * self.previousAngularVelocity[11] * (-1.0 * self.previousAngularVelocity[11] + 1.0) + Double.pow(self.previousAngularVelocity[11], 2)) * self.poleLength * Double.sin(self.previousAngle[11]) * -0.06666666666666667) / ((self.cartMass / self.poleMass + 1.0) * -1.3333333333333333 + Double.pow(Double.cos(self.previousAngle[11]), 2)))
buffer[4554] = -1.0 * (-0.06666666666666667 / (self.poleMass * Double.pow(Double.cos(self.previousAngle[11]), 2) + (self.cartMass + self.poleMass) * -1.3333333333333333))
buffer[4556] = 1.0
buffer[4652] = -1.0 * 1.0
buffer[4653] = -1.0 * 0.05
buffer[4657] = 1.0
buffer[4752] = -1.0 * ((self.cartMass + self.poleMass) * (((self.poleLength * self.poleMass * Double.pow(Double.sin(self.previousAngle[11]), 2) * -2.0 * Double.cos(self.previousAngle[11]) + (self.poleMass * Double.pow(Double.cos(self.previousAngle[11]), 2) * -1.0 * self.poleLength + 1.3333333333333333 * self.poleLength * (self.cartMass + self.poleMass)) * Double.cos(self.previousAngle[11])) * (-1.0 * self.previousAngle[11] + 1.0)) / Double.pow(self.poleMass * Double.pow(Double.cos(self.previousAngle[11]), 2) * -1.0 * self.poleLength + 1.3333333333333333 * self.poleLength * (self.cartMass + self.poleMass), 2) + Double.sin(self.previousAngle[11]) / (self.poleMass * Double.pow(Double.cos(self.previousAngle[11]), 2) * -1.0 * self.poleLength + 1.3333333333333333 * self.poleLength * (self.cartMass + self.poleMass))) * 0.05 * self.gravity)
buffer[4753] = -1.0 * (((2.0 * self.previousAngularVelocity[11] * (-1.0 * self.previousAngularVelocity[11] + 1.0) + Double.pow(self.previousAngularVelocity[11], 2)) * Double.sin(self.previousAngle[11]) * -0.05) / (Double.cos(self.previousAngle[11]) * -1.0 + (self.cartMass / self.poleMass + 1.0) * 1.3333333333333333) + 1.0)
buffer[4754] = -1.0 * (-0.05 / (-1.0 * self.poleLength * self.poleMass * Double.cos(self.previousAngle[11]) + 1.3333333333333333 * self.poleLength * (self.cartMass + self.poleMass)))
buffer[4758] = 1.0
buffer[4855] = -1.0 * 1.0
buffer[4856] = -1.0 * 0.05
buffer[4860] = 1.0
buffer[4956] = -1.0 * 1.0
buffer[4957] = -1.0 * ((((Double.pow(Double.cos(self.previousAngle[12]), 2) * 2.0 * Double.pow(Double.sin(self.previousAngle[12]), 2) + (Double.pow(Double.sin(self.previousAngle[12]), 2) * -1.0 + Double.pow(Double.cos(self.previousAngle[12]), 2)) * ((self.cartMass / self.poleMass + 1.0) * -1.3333333333333333 + Double.pow(Double.cos(self.previousAngle[12]), 2))) * (-1.0 * self.previousAngle[12] + 1.0)) / Double.pow((self.cartMass / self.poleMass + 1.0) * -1.3333333333333333 + Double.pow(Double.cos(self.previousAngle[12]), 2), 2) + (Double.cos(self.previousAngle[12]) * Double.sin(self.previousAngle[12])) / ((self.cartMass / self.poleMass + 1.0) * -1.3333333333333333 + Double.pow(Double.cos(self.previousAngle[12]), 2))) * 0.05 * self.gravity)
buffer[4958] = -1.0 * (((2.0 * self.previousAngularVelocity[12] * (-1.0 * self.previousAngularVelocity[12] + 1.0) + Double.pow(self.previousAngularVelocity[12], 2)) * self.poleLength * Double.sin(self.previousAngle[12]) * -0.06666666666666667) / ((self.cartMass / self.poleMass + 1.0) * -1.3333333333333333 + Double.pow(Double.cos(self.previousAngle[12]), 2)))
buffer[4959] = -1.0 * (-0.06666666666666667 / ((self.cartMass + self.poleMass) * -1.3333333333333333 + self.poleMass * Double.pow(Double.cos(self.previousAngle[12]), 2)))
buffer[4961] = 1.0
buffer[5057] = -1.0 * 1.0
buffer[5058] = -1.0 * 0.05
buffer[5062] = 1.0
buffer[5157] = -1.0 * ((self.cartMass + self.poleMass) * (((self.poleLength * self.poleMass * Double.pow(Double.sin(self.previousAngle[12]), 2) * -2.0 * Double.cos(self.previousAngle[12]) + (self.poleMass * Double.pow(Double.cos(self.previousAngle[12]), 2) * -1.0 * self.poleLength + 1.3333333333333333 * self.poleLength * (self.cartMass + self.poleMass)) * Double.cos(self.previousAngle[12])) * (-1.0 * self.previousAngle[12] + 1.0)) / Double.pow(self.poleMass * Double.pow(Double.cos(self.previousAngle[12]), 2) * -1.0 * self.poleLength + 1.3333333333333333 * self.poleLength * (self.cartMass + self.poleMass), 2) + Double.sin(self.previousAngle[12]) / (self.poleMass * Double.pow(Double.cos(self.previousAngle[12]), 2) * -1.0 * self.poleLength + 1.3333333333333333 * self.poleLength * (self.cartMass + self.poleMass))) * 0.05 * self.gravity)
buffer[5158] = -1.0 * (((2.0 * self.previousAngularVelocity[12] * (-1.0 * self.previousAngularVelocity[12] + 1.0) + Double.pow(self.previousAngularVelocity[12], 2)) * Double.sin(self.previousAngle[12]) * -0.05) / ((self.cartMass / self.poleMass + 1.0) * 1.3333333333333333 + Double.cos(self.previousAngle[12]) * -1.0) + 1.0)
buffer[5159] = -1.0 * (-0.05 / (-1.0 * self.poleLength * self.poleMass * Double.cos(self.previousAngle[12]) + 1.3333333333333333 * self.poleLength * (self.cartMass + self.poleMass)))
buffer[5163] = 1.0
buffer[5260] = -1.0 * 1.0
buffer[5261] = -1.0 * 0.05
buffer[5265] = 1.0
buffer[5361] = -1.0 * 1.0
buffer[5362] = -1.0 * (((Double.cos(self.previousAngle[13]) * Double.sin(self.previousAngle[13])) / ((self.cartMass / self.poleMass + 1.0) * -1.3333333333333333 + Double.pow(Double.cos(self.previousAngle[13]), 2)) + ((-1.0 * self.previousAngle[13] + 1.0) * (Double.pow(Double.sin(self.previousAngle[13]), 2) * 2.0 * Double.pow(Double.cos(self.previousAngle[13]), 2) + ((self.cartMass / self.poleMass + 1.0) * -1.3333333333333333 + Double.pow(Double.cos(self.previousAngle[13]), 2)) * (Double.pow(Double.sin(self.previousAngle[13]), 2) * -1.0 + Double.pow(Double.cos(self.previousAngle[13]), 2)))) / Double.pow((self.cartMass / self.poleMass + 1.0) * -1.3333333333333333 + Double.pow(Double.cos(self.previousAngle[13]), 2), 2)) * 0.05 * self.gravity)
buffer[5363] = -1.0 * (((2.0 * self.previousAngularVelocity[13] * (-1.0 * self.previousAngularVelocity[13] + 1.0) + Double.pow(self.previousAngularVelocity[13], 2)) * self.poleLength * Double.sin(self.previousAngle[13]) * -0.06666666666666667) / ((self.cartMass / self.poleMass + 1.0) * -1.3333333333333333 + Double.pow(Double.cos(self.previousAngle[13]), 2)))
buffer[5364] = -1.0 * (-0.06666666666666667 / (self.poleMass * Double.pow(Double.cos(self.previousAngle[13]), 2) + (self.cartMass + self.poleMass) * -1.3333333333333333))
buffer[5366] = 1.0
buffer[5462] = -1.0 * 1.0
buffer[5463] = -1.0 * 0.05
buffer[5467] = 1.0
buffer[5562] = -1.0 * ((self.cartMass + self.poleMass) * (Double.sin(self.previousAngle[13]) / (self.poleMass * Double.pow(Double.cos(self.previousAngle[13]), 2) * -1.0 * self.poleLength + 1.3333333333333333 * self.poleLength * (self.cartMass + self.poleMass)) + ((-1.0 * self.previousAngle[13] + 1.0) * (self.poleLength * self.poleMass * Double.pow(Double.sin(self.previousAngle[13]), 2) * -2.0 * Double.cos(self.previousAngle[13]) + (self.poleMass * Double.pow(Double.cos(self.previousAngle[13]), 2) * -1.0 * self.poleLength + 1.3333333333333333 * self.poleLength * (self.cartMass + self.poleMass)) * Double.cos(self.previousAngle[13]))) / Double.pow(self.poleMass * Double.pow(Double.cos(self.previousAngle[13]), 2) * -1.0 * self.poleLength + 1.3333333333333333 * self.poleLength * (self.cartMass + self.poleMass), 2)) * 0.05 * self.gravity)
buffer[5563] = -1.0 * (((2.0 * self.previousAngularVelocity[13] * (-1.0 * self.previousAngularVelocity[13] + 1.0) + Double.pow(self.previousAngularVelocity[13], 2)) * Double.sin(self.previousAngle[13]) * -0.05) / (Double.cos(self.previousAngle[13]) * -1.0 + (self.cartMass / self.poleMass + 1.0) * 1.3333333333333333) + 1.0)
buffer[5564] = -1.0 * (-0.05 / (-1.0 * self.poleLength * self.poleMass * Double.cos(self.previousAngle[13]) + 1.3333333333333333 * self.poleLength * (self.cartMass + self.poleMass)))
buffer[5568] = 1.0
buffer[5665] = -1.0 * 1.0
buffer[5666] = -1.0 * 0.05
buffer[5670] = 1.0
buffer[5766] = -1.0 * 1.0
buffer[5767] = -1.0 * ((((-1.0 * self.previousAngle[14] + 1.0) * (((self.cartMass / self.poleMass + 1.0) * -1.3333333333333333 + Double.pow(Double.cos(self.previousAngle[14]), 2)) * (Double.pow(Double.sin(self.previousAngle[14]), 2) * -1.0 + Double.pow(Double.cos(self.previousAngle[14]), 2)) + Double.pow(Double.cos(self.previousAngle[14]), 2) * 2.0 * Double.pow(Double.sin(self.previousAngle[14]), 2))) / Double.pow((self.cartMass / self.poleMass + 1.0) * -1.3333333333333333 + Double.pow(Double.cos(self.previousAngle[14]), 2), 2) + (Double.cos(self.previousAngle[14]) * Double.sin(self.previousAngle[14])) / ((self.cartMass / self.poleMass + 1.0) * -1.3333333333333333 + Double.pow(Double.cos(self.previousAngle[14]), 2))) * 0.05 * self.gravity)
buffer[5768] = -1.0 * (((2.0 * self.previousAngularVelocity[14] * (-1.0 * self.previousAngularVelocity[14] + 1.0) + Double.pow(self.previousAngularVelocity[14], 2)) * self.poleLength * Double.sin(self.previousAngle[14]) * -0.06666666666666667) / ((self.cartMass / self.poleMass + 1.0) * -1.3333333333333333 + Double.pow(Double.cos(self.previousAngle[14]), 2)))
buffer[5769] = -1.0 * (-0.06666666666666667 / (self.poleMass * Double.pow(Double.cos(self.previousAngle[14]), 2) + (self.cartMass + self.poleMass) * -1.3333333333333333))
buffer[5771] = 1.0
buffer[5867] = -1.0 * 1.0
buffer[5868] = -1.0 * 0.05
buffer[5872] = 1.0
buffer[5967] = -1.0 * ((Double.sin(self.previousAngle[14]) / (self.poleMass * Double.pow(Double.cos(self.previousAngle[14]), 2) * -1.0 * self.poleLength + 1.3333333333333333 * self.poleLength * (self.cartMass + self.poleMass)) + ((-1.0 * self.previousAngle[14] + 1.0) * (self.poleLength * self.poleMass * Double.pow(Double.sin(self.previousAngle[14]), 2) * -2.0 * Double.cos(self.previousAngle[14]) + (self.poleMass * Double.pow(Double.cos(self.previousAngle[14]), 2) * -1.0 * self.poleLength + 1.3333333333333333 * self.poleLength * (self.cartMass + self.poleMass)) * Double.cos(self.previousAngle[14]))) / Double.pow(self.poleMass * Double.pow(Double.cos(self.previousAngle[14]), 2) * -1.0 * self.poleLength + 1.3333333333333333 * self.poleLength * (self.cartMass + self.poleMass), 2)) * (self.cartMass + self.poleMass) * 0.05 * self.gravity)
buffer[5968] = -1.0 * (((2.0 * self.previousAngularVelocity[14] * (-1.0 * self.previousAngularVelocity[14] + 1.0) + Double.pow(self.previousAngularVelocity[14], 2)) * Double.sin(self.previousAngle[14]) * -0.05) / (Double.cos(self.previousAngle[14]) * -1.0 + (self.cartMass / self.poleMass + 1.0) * 1.3333333333333333) + 1.0)
buffer[5969] = -1.0 * (-0.05 / (-1.0 * self.poleLength * self.poleMass * Double.cos(self.previousAngle[14]) + 1.3333333333333333 * self.poleLength * (self.cartMass + self.poleMass)))
buffer[5973] = 1.0
buffer[6070] = -1.0 * 1.0
buffer[6071] = -1.0 * 0.05
buffer[6075] = 1.0
buffer[6171] = -1.0 * 1.0
buffer[6172] = -1.0 * (((((Double.pow(Double.sin(self.previousAngle[15]), 2) * -1.0 + Double.pow(Double.cos(self.previousAngle[15]), 2)) * ((self.cartMass / self.poleMass + 1.0) * -1.3333333333333333 + Double.pow(Double.cos(self.previousAngle[15]), 2)) + Double.pow(Double.cos(self.previousAngle[15]), 2) * 2.0 * Double.pow(Double.sin(self.previousAngle[15]), 2)) * (-1.0 * self.previousAngle[15] + 1.0)) / Double.pow((self.cartMass / self.poleMass + 1.0) * -1.3333333333333333 + Double.pow(Double.cos(self.previousAngle[15]), 2), 2) + (Double.cos(self.previousAngle[15]) * Double.sin(self.previousAngle[15])) / ((self.cartMass / self.poleMass + 1.0) * -1.3333333333333333 + Double.pow(Double.cos(self.previousAngle[15]), 2))) * 0.05 * self.gravity)
buffer[6173] = -1.0 * (((2.0 * self.previousAngularVelocity[15] * (-1.0 * self.previousAngularVelocity[15] + 1.0) + Double.pow(self.previousAngularVelocity[15], 2)) * self.poleLength * Double.sin(self.previousAngle[15]) * -0.06666666666666667) / ((self.cartMass / self.poleMass + 1.0) * -1.3333333333333333 + Double.pow(Double.cos(self.previousAngle[15]), 2)))
buffer[6174] = -1.0 * (-0.06666666666666667 / (self.poleMass * Double.pow(Double.cos(self.previousAngle[15]), 2) + (self.cartMass + self.poleMass) * -1.3333333333333333))
buffer[6176] = 1.0
buffer[6272] = -1.0 * 1.0
buffer[6273] = -1.0 * 0.05
buffer[6277] = 1.0
buffer[6372] = -1.0 * ((self.cartMass + self.poleMass) * (((-1.0 * self.previousAngle[15] + 1.0) * (self.poleLength * self.poleMass * Double.pow(Double.sin(self.previousAngle[15]), 2) * -2.0 * Double.cos(self.previousAngle[15]) + (self.poleMass * Double.pow(Double.cos(self.previousAngle[15]), 2) * -1.0 * self.poleLength + 1.3333333333333333 * self.poleLength * (self.cartMass + self.poleMass)) * Double.cos(self.previousAngle[15]))) / Double.pow(self.poleMass * Double.pow(Double.cos(self.previousAngle[15]), 2) * -1.0 * self.poleLength + 1.3333333333333333 * self.poleLength * (self.cartMass + self.poleMass), 2) + Double.sin(self.previousAngle[15]) / (self.poleMass * Double.pow(Double.cos(self.previousAngle[15]), 2) * -1.0 * self.poleLength + 1.3333333333333333 * self.poleLength * (self.cartMass + self.poleMass))) * 0.05 * self.gravity)
buffer[6373] = -1.0 * (((2.0 * self.previousAngularVelocity[15] * (-1.0 * self.previousAngularVelocity[15] + 1.0) + Double.pow(self.previousAngularVelocity[15], 2)) * Double.sin(self.previousAngle[15]) * -0.05) / (Double.cos(self.previousAngle[15]) * -1.0 + (self.cartMass / self.poleMass + 1.0) * 1.3333333333333333) + 1.0)
buffer[6374] = -1.0 * (-0.05 / (-1.0 * self.poleLength * self.poleMass * Double.cos(self.previousAngle[15]) + 1.3333333333333333 * self.poleLength * (self.cartMass + self.poleMass)))
buffer[6378] = 1.0
buffer[6475] = -1.0 * 1.0
buffer[6476] = -1.0 * 0.05
buffer[6480] = 1.0
buffer[6576] = -1.0 * 1.0
buffer[6577] = -1.0 * (((Double.cos(self.previousAngle[16]) * Double.sin(self.previousAngle[16])) / ((self.cartMass / self.poleMass + 1.0) * -1.3333333333333333 + Double.pow(Double.cos(self.previousAngle[16]), 2)) + ((Double.pow(Double.cos(self.previousAngle[16]), 2) * 2.0 * Double.pow(Double.sin(self.previousAngle[16]), 2) + ((self.cartMass / self.poleMass + 1.0) * -1.3333333333333333 + Double.pow(Double.cos(self.previousAngle[16]), 2)) * (Double.pow(Double.sin(self.previousAngle[16]), 2) * -1.0 + Double.pow(Double.cos(self.previousAngle[16]), 2))) * (-1.0 * self.previousAngle[16] + 1.0)) / Double.pow((self.cartMass / self.poleMass + 1.0) * -1.3333333333333333 + Double.pow(Double.cos(self.previousAngle[16]), 2), 2)) * 0.05 * self.gravity)
buffer[6578] = -1.0 * (((2.0 * self.previousAngularVelocity[16] * (-1.0 * self.previousAngularVelocity[16] + 1.0) + Double.pow(self.previousAngularVelocity[16], 2)) * self.poleLength * Double.sin(self.previousAngle[16]) * -0.06666666666666667) / ((self.cartMass / self.poleMass + 1.0) * -1.3333333333333333 + Double.pow(Double.cos(self.previousAngle[16]), 2)))
buffer[6579] = -1.0 * (-0.06666666666666667 / ((self.cartMass + self.poleMass) * -1.3333333333333333 + self.poleMass * Double.pow(Double.cos(self.previousAngle[16]), 2)))
buffer[6581] = 1.0
buffer[6677] = -1.0 * 1.0
buffer[6678] = -1.0 * 0.05
buffer[6682] = 1.0
buffer[6777] = -1.0 * ((self.cartMass + self.poleMass) * (((-1.0 * self.previousAngle[16] + 1.0) * ((self.poleMass * Double.pow(Double.cos(self.previousAngle[16]), 2) * -1.0 * self.poleLength + 1.3333333333333333 * self.poleLength * (self.cartMass + self.poleMass)) * Double.cos(self.previousAngle[16]) + self.poleLength * self.poleMass * Double.pow(Double.sin(self.previousAngle[16]), 2) * -2.0 * Double.cos(self.previousAngle[16]))) / Double.pow(self.poleMass * Double.pow(Double.cos(self.previousAngle[16]), 2) * -1.0 * self.poleLength + 1.3333333333333333 * self.poleLength * (self.cartMass + self.poleMass), 2) + Double.sin(self.previousAngle[16]) / (self.poleMass * Double.pow(Double.cos(self.previousAngle[16]), 2) * -1.0 * self.poleLength + 1.3333333333333333 * self.poleLength * (self.cartMass + self.poleMass))) * 0.05 * self.gravity)
buffer[6778] = -1.0 * (((2.0 * self.previousAngularVelocity[16] * (-1.0 * self.previousAngularVelocity[16] + 1.0) + Double.pow(self.previousAngularVelocity[16], 2)) * Double.sin(self.previousAngle[16]) * -0.05) / ((self.cartMass / self.poleMass + 1.0) * 1.3333333333333333 + Double.cos(self.previousAngle[16]) * -1.0) + 1.0)
buffer[6779] = -1.0 * (-0.05 / (-1.0 * self.poleLength * self.poleMass * Double.cos(self.previousAngle[16]) + 1.3333333333333333 * self.poleLength * (self.cartMass + self.poleMass)))
buffer[6783] = 1.0
buffer[6880] = -1.0 * 1.0
buffer[6881] = -1.0 * 0.05
buffer[6885] = 1.0
buffer[6981] = -1.0 * 1.0
buffer[6982] = -1.0 * ((((-1.0 * self.previousAngle[17] + 1.0) * (Double.pow(Double.cos(self.previousAngle[17]), 2) * 2.0 * Double.pow(Double.sin(self.previousAngle[17]), 2) + (Double.pow(Double.sin(self.previousAngle[17]), 2) * -1.0 + Double.pow(Double.cos(self.previousAngle[17]), 2)) * ((self.cartMass / self.poleMass + 1.0) * -1.3333333333333333 + Double.pow(Double.cos(self.previousAngle[17]), 2)))) / Double.pow((self.cartMass / self.poleMass + 1.0) * -1.3333333333333333 + Double.pow(Double.cos(self.previousAngle[17]), 2), 2) + (Double.cos(self.previousAngle[17]) * Double.sin(self.previousAngle[17])) / ((self.cartMass / self.poleMass + 1.0) * -1.3333333333333333 + Double.pow(Double.cos(self.previousAngle[17]), 2))) * 0.05 * self.gravity)
buffer[6983] = -1.0 * (((2.0 * self.previousAngularVelocity[17] * (-1.0 * self.previousAngularVelocity[17] + 1.0) + Double.pow(self.previousAngularVelocity[17], 2)) * self.poleLength * Double.sin(self.previousAngle[17]) * -0.06666666666666667) / ((self.cartMass / self.poleMass + 1.0) * -1.3333333333333333 + Double.pow(Double.cos(self.previousAngle[17]), 2)))
buffer[6984] = -1.0 * (-0.06666666666666667 / ((self.cartMass + self.poleMass) * -1.3333333333333333 + self.poleMass * Double.pow(Double.cos(self.previousAngle[17]), 2)))
buffer[6986] = 1.0
buffer[7082] = -1.0 * 1.0
buffer[7083] = -1.0 * 0.05
buffer[7087] = 1.0
buffer[7182] = -1.0 * ((self.cartMass + self.poleMass) * (Double.sin(self.previousAngle[17]) / (self.poleMass * Double.pow(Double.cos(self.previousAngle[17]), 2) * -1.0 * self.poleLength + 1.3333333333333333 * self.poleLength * (self.cartMass + self.poleMass)) + ((-1.0 * self.previousAngle[17] + 1.0) * ((self.poleMass * Double.pow(Double.cos(self.previousAngle[17]), 2) * -1.0 * self.poleLength + 1.3333333333333333 * self.poleLength * (self.cartMass + self.poleMass)) * Double.cos(self.previousAngle[17]) + self.poleLength * self.poleMass * Double.pow(Double.sin(self.previousAngle[17]), 2) * -2.0 * Double.cos(self.previousAngle[17]))) / Double.pow(self.poleMass * Double.pow(Double.cos(self.previousAngle[17]), 2) * -1.0 * self.poleLength + 1.3333333333333333 * self.poleLength * (self.cartMass + self.poleMass), 2)) * 0.05 * self.gravity)
buffer[7183] = -1.0 * (((2.0 * self.previousAngularVelocity[17] * (-1.0 * self.previousAngularVelocity[17] + 1.0) + Double.pow(self.previousAngularVelocity[17], 2)) * Double.sin(self.previousAngle[17]) * -0.05) / (Double.cos(self.previousAngle[17]) * -1.0 + (self.cartMass / self.poleMass + 1.0) * 1.3333333333333333) + 1.0)
buffer[7184] = -1.0 * (-0.05 / (-1.0 * self.poleLength * self.poleMass * Double.cos(self.previousAngle[17]) + 1.3333333333333333 * self.poleLength * (self.cartMass + self.poleMass)))
buffer[7188] = 1.0
buffer[7285] = -1.0 * 1.0
buffer[7286] = -1.0 * 0.05
buffer[7290] = 1.0
buffer[7386] = -1.0 * 1.0
buffer[7387] = -1.0 * (((Double.cos(self.previousAngle[18]) * Double.sin(self.previousAngle[18])) / ((self.cartMass / self.poleMass + 1.0) * -1.3333333333333333 + Double.pow(Double.cos(self.previousAngle[18]), 2)) + ((Double.pow(Double.cos(self.previousAngle[18]), 2) * 2.0 * Double.pow(Double.sin(self.previousAngle[18]), 2) + ((self.cartMass / self.poleMass + 1.0) * -1.3333333333333333 + Double.pow(Double.cos(self.previousAngle[18]), 2)) * (Double.pow(Double.sin(self.previousAngle[18]), 2) * -1.0 + Double.pow(Double.cos(self.previousAngle[18]), 2))) * (-1.0 * self.previousAngle[18] + 1.0)) / Double.pow((self.cartMass / self.poleMass + 1.0) * -1.3333333333333333 + Double.pow(Double.cos(self.previousAngle[18]), 2), 2)) * 0.05 * self.gravity)
buffer[7388] = -1.0 * (((2.0 * self.previousAngularVelocity[18] * (-1.0 * self.previousAngularVelocity[18] + 1.0) + Double.pow(self.previousAngularVelocity[18], 2)) * self.poleLength * Double.sin(self.previousAngle[18]) * -0.06666666666666667) / ((self.cartMass / self.poleMass + 1.0) * -1.3333333333333333 + Double.pow(Double.cos(self.previousAngle[18]), 2)))
buffer[7389] = -1.0 * (-0.06666666666666667 / (self.poleMass * Double.pow(Double.cos(self.previousAngle[18]), 2) + (self.cartMass + self.poleMass) * -1.3333333333333333))
buffer[7391] = 1.0
buffer[7487] = -1.0 * 1.0
buffer[7488] = -1.0 * 0.05
buffer[7492] = 1.0
buffer[7587] = -1.0 * ((self.cartMass + self.poleMass) * (((self.poleLength * self.poleMass * Double.pow(Double.sin(self.previousAngle[18]), 2) * -2.0 * Double.cos(self.previousAngle[18]) + (self.poleMass * Double.pow(Double.cos(self.previousAngle[18]), 2) * -1.0 * self.poleLength + 1.3333333333333333 * self.poleLength * (self.cartMass + self.poleMass)) * Double.cos(self.previousAngle[18])) * (-1.0 * self.previousAngle[18] + 1.0)) / Double.pow(self.poleMass * Double.pow(Double.cos(self.previousAngle[18]), 2) * -1.0 * self.poleLength + 1.3333333333333333 * self.poleLength * (self.cartMass + self.poleMass), 2) + Double.sin(self.previousAngle[18]) / (self.poleMass * Double.pow(Double.cos(self.previousAngle[18]), 2) * -1.0 * self.poleLength + 1.3333333333333333 * self.poleLength * (self.cartMass + self.poleMass))) * 0.05 * self.gravity)
buffer[7588] = -1.0 * (((2.0 * self.previousAngularVelocity[18] * (-1.0 * self.previousAngularVelocity[18] + 1.0) + Double.pow(self.previousAngularVelocity[18], 2)) * Double.sin(self.previousAngle[18]) * -0.05) / (Double.cos(self.previousAngle[18]) * -1.0 + (self.cartMass / self.poleMass + 1.0) * 1.3333333333333333) + 1.0)
buffer[7589] = -1.0 * (-0.05 / (-1.0 * self.poleLength * self.poleMass * Double.cos(self.previousAngle[18]) + 1.3333333333333333 * self.poleLength * (self.cartMass + self.poleMass)))
buffer[7593] = 1.0
buffer[7690] = -1.0 * 1.0
buffer[7691] = -1.0 * 0.05
buffer[7695] = 1.0
buffer[7791] = -1.0 * 1.0
buffer[7792] = -1.0 * ((((Double.pow(Double.cos(self.previousAngle[19]), 2) * 2.0 * Double.pow(Double.sin(self.previousAngle[19]), 2) + (Double.pow(Double.sin(self.previousAngle[19]), 2) * -1.0 + Double.pow(Double.cos(self.previousAngle[19]), 2)) * ((self.cartMass / self.poleMass + 1.0) * -1.3333333333333333 + Double.pow(Double.cos(self.previousAngle[19]), 2))) * (-1.0 * self.previousAngle[19] + 1.0)) / Double.pow((self.cartMass / self.poleMass + 1.0) * -1.3333333333333333 + Double.pow(Double.cos(self.previousAngle[19]), 2), 2) + (Double.cos(self.previousAngle[19]) * Double.sin(self.previousAngle[19])) / ((self.cartMass / self.poleMass + 1.0) * -1.3333333333333333 + Double.pow(Double.cos(self.previousAngle[19]), 2))) * 0.05 * self.gravity)
buffer[7793] = -1.0 * (((2.0 * self.previousAngularVelocity[19] * (-1.0 * self.previousAngularVelocity[19] + 1.0) + Double.pow(self.previousAngularVelocity[19], 2)) * self.poleLength * Double.sin(self.previousAngle[19]) * -0.06666666666666667) / ((self.cartMass / self.poleMass + 1.0) * -1.3333333333333333 + Double.pow(Double.cos(self.previousAngle[19]), 2)))
buffer[7794] = -1.0 * (-0.06666666666666667 / (self.poleMass * Double.pow(Double.cos(self.previousAngle[19]), 2) + (self.cartMass + self.poleMass) * -1.3333333333333333))
buffer[7796] = 1.0
buffer[7892] = -1.0 * 1.0
buffer[7893] = -1.0 * 0.05
buffer[7897] = 1.0
buffer[7992] = -1.0 * ((((-1.0 * self.previousAngle[19] + 1.0) * ((self.poleMass * Double.pow(Double.cos(self.previousAngle[19]), 2) * -1.0 * self.poleLength + 1.3333333333333333 * self.poleLength * (self.cartMass + self.poleMass)) * Double.cos(self.previousAngle[19]) + self.poleLength * self.poleMass * Double.pow(Double.sin(self.previousAngle[19]), 2) * -2.0 * Double.cos(self.previousAngle[19]))) / Double.pow(self.poleMass * Double.pow(Double.cos(self.previousAngle[19]), 2) * -1.0 * self.poleLength + 1.3333333333333333 * self.poleLength * (self.cartMass + self.poleMass), 2) + Double.sin(self.previousAngle[19]) / (self.poleMass * Double.pow(Double.cos(self.previousAngle[19]), 2) * -1.0 * self.poleLength + 1.3333333333333333 * self.poleLength * (self.cartMass + self.poleMass))) * (self.cartMass + self.poleMass) * 0.05 * self.gravity)
buffer[7993] = -1.0 * (((2.0 * self.previousAngularVelocity[19] * (-1.0 * self.previousAngularVelocity[19] + 1.0) + Double.pow(self.previousAngularVelocity[19], 2)) * Double.sin(self.previousAngle[19]) * -0.05) / ((self.cartMass / self.poleMass + 1.0) * 1.3333333333333333 + Double.cos(self.previousAngle[19]) * -1.0) + 1.0)
buffer[7994] = -1.0 * (-0.05 / (-1.0 * self.poleLength * self.poleMass * Double.cos(self.previousAngle[19]) + 1.3333333333333333 * self.poleLength * (self.cartMass + self.poleMass)))
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
buffer[5] = -1.0 * 0.0
buffer[6] = -1.0 * 0.0
buffer[7] = -1.0 * 0.0
buffer[8] = -1.0 * 0.0
buffer[9] = -1.0 * 0.0
buffer[10] = -1.0 * 0.0
buffer[11] = -1.0 * 0.0
buffer[12] = -1.0 * 0.0
buffer[13] = -1.0 * 0.0
buffer[14] = -1.0 * 0.0
buffer[15] = -1.0 * 0.0
buffer[16] = -1.0 * 0.0
buffer[17] = -1.0 * 0.0
buffer[18] = -1.0 * 0.0
buffer[19] = -1.0 * 0.0
buffer[20] = -1.0 * 0.0
buffer[21] = -1.0 * 0.0
buffer[22] = -1.0 * 0.0
buffer[23] = -1.0 * 0.0
buffer[24] = -1.0 * 0.0
buffer[25] = -1.0 * 0.0
buffer[26] = -1.0 * 0.0
buffer[27] = -1.0 * 0.0
buffer[28] = -1.0 * 0.0
buffer[29] = -1.0 * 0.0
buffer[30] = -1.0 * 0.0
buffer[31] = -1.0 * 0.0
buffer[32] = -1.0 * 0.0
buffer[33] = -1.0 * 0.0
buffer[34] = -1.0 * 0.0
buffer[35] = -1.0 * 0.0
buffer[36] = -1.0 * 0.0
buffer[37] = -1.0 * 0.0
buffer[38] = -1.0 * 0.0
buffer[39] = -1.0 * 0.0
buffer[40] = -1.0 * 0.0
buffer[41] = -1.0 * 0.0
buffer[42] = -1.0 * 0.0
buffer[43] = -1.0 * 0.0
buffer[44] = -1.0 * 0.0
buffer[45] = -1.0 * 0.0
buffer[46] = -1.0 * 0.0
buffer[47] = -1.0 * 0.0
buffer[48] = -1.0 * 0.0
buffer[49] = -1.0 * 0.0
buffer[50] = -1.0 * 0.0
buffer[51] = -1.0 * 0.0
buffer[52] = -1.0 * 0.0
buffer[53] = -1.0 * 0.0
buffer[54] = -1.0 * 0.0
buffer[55] = -1.0 * 0.0
buffer[56] = -1.0 * 0.0
buffer[57] = -1.0 * 0.0
buffer[58] = -1.0 * 0.0
buffer[59] = -1.0 * 0.0
buffer[60] = -1.0 * 0.0
buffer[61] = -1.0 * 0.0
buffer[62] = -1.0 * 0.0
buffer[63] = -1.0 * 0.0
buffer[64] = -1.0 * 0.0
buffer[65] = -1.0 * 0.0
buffer[66] = -1.0 * 0.0
buffer[67] = -1.0 * 0.0
buffer[68] = -1.0 * 0.0
buffer[69] = -1.0 * 0.0
buffer[70] = -1.0 * 0.0
buffer[71] = -1.0 * 0.0
buffer[72] = -1.0 * 0.0
buffer[73] = -1.0 * 0.0
buffer[74] = -1.0 * 0.0
buffer[75] = -1.0 * 0.0
buffer[76] = -1.0 * 0.0
buffer[77] = -1.0 * 0.0
buffer[78] = -1.0 * 0.0
buffer[79] = -1.0 * 0.0
})
return flat
}

//=================== Inequality Constraints Value ===================
@inlinable
func inequalityConstraintsValue(_ x: Vector) -> Double {
return Double.log((x[24] + -10.0) * -1.0) * -1.0 + Double.log((x[89] * -1.0 + -10.0) * -1.0) * -1.0 + Double.log((x[9] + -10.0) * -1.0) * -1.0 + Double.log((x[25] + -4.2) * -1.0) * -1.0 + Double.log((x[54] * -1.0 + -10.0) * -1.0) * -1.0 + Double.log((x[95] * -1.0 + -4.2) * -1.0) * -1.0 + Double.log((x[14] + -10.0) * -1.0) * -1.0 + Double.log((x[60] + -4.2) * -1.0) * -1.0 + Double.log((x[19] * -1.0 + -10.0) * -1.0) * -1.0 + Double.log((x[50] + -4.2) * -1.0) * -1.0 + Double.log((x[35] * -1.0 + -4.2) * -1.0) * -1.0 + Double.log((x[49] * -1.0 + -10.0) * -1.0) * -1.0 + Double.log((x[75] + -4.2) * -1.0) * -1.0 + Double.log((x[55] + -4.2) * -1.0) * -1.0 + Double.log((x[10] + -4.2) * -1.0) * -1.0 + Double.log((x[0] * -1.0 + -4.2) * -1.0) * -1.0 + Double.log((x[59] * -1.0 + -10.0) * -1.0) * -1.0 + Double.log((x[30] + -4.2) * -1.0) * -1.0 + Double.log((x[64] + -10.0) * -1.0) * -1.0 + Double.log((x[99] * -1.0 + -10.0) * -1.0) * -1.0 + Double.log((x[14] * -1.0 + -10.0) * -1.0) * -1.0 + Double.log((x[95] + -4.2) * -1.0) * -1.0 + Double.log((x[20] + -4.2) * -1.0) * -1.0 + Double.log((x[40] * -1.0 + -4.2) * -1.0) * -1.0 + Double.log((x[74] + -10.0) * -1.0) * -1.0 + Double.log((x[40] + -4.2) * -1.0) * -1.0 + Double.log((x[29] + -10.0) * -1.0) * -1.0 + Double.log((x[50] * -1.0 + -4.2) * -1.0) * -1.0 + Double.log((x[84] + -10.0) * -1.0) * -1.0 + Double.log((x[30] * -1.0 + -4.2) * -1.0) * -1.0 + Double.log((x[80] * -1.0 + -4.2) * -1.0) * -1.0 + Double.log((x[79] * -1.0 + -10.0) * -1.0) * -1.0 + Double.log((x[20] * -1.0 + -4.2) * -1.0) * -1.0 + Double.log((x[54] + -10.0) * -1.0) * -1.0 + Double.log((x[80] + -4.2) * -1.0) * -1.0 + Double.log((x[4] * -1.0 + -10.0) * -1.0) * -1.0 + Double.log((x[15] + -4.2) * -1.0) * -1.0 + Double.log((x[85] + -4.2) * -1.0) * -1.0 + Double.log((x[99] + -10.0) * -1.0) * -1.0 + Double.log((x[34] * -1.0 + -10.0) * -1.0) * -1.0 + Double.log((x[65] + -4.2) * -1.0) * -1.0 + Double.log((x[79] + -10.0) * -1.0) * -1.0 + Double.log((x[90] * -1.0 + -4.2) * -1.0) * -1.0 + Double.log((x[64] * -1.0 + -10.0) * -1.0) * -1.0 + Double.log((x[44] * -1.0 + -10.0) * -1.0) * -1.0 + Double.log((x[15] * -1.0 + -4.2) * -1.0) * -1.0 + Double.log((x[39] + -10.0) * -1.0) * -1.0 + Double.log((x[69] + -10.0) * -1.0) * -1.0 + Double.log((x[89] + -10.0) * -1.0) * -1.0 + Double.log((x[85] * -1.0 + -4.2) * -1.0) * -1.0 + Double.log((x[4] + -10.0) * -1.0) * -1.0 + Double.log((x[25] * -1.0 + -4.2) * -1.0) * -1.0 + Double.log((x[49] + -10.0) * -1.0) * -1.0 + Double.log((x[19] + -10.0) * -1.0) * -1.0 + Double.log((x[45] + -4.2) * -1.0) * -1.0 + Double.log((x[24] * -1.0 + -10.0) * -1.0) * -1.0 + Double.log((x[5] + -4.2) * -1.0) * -1.0 + Double.log((x[45] * -1.0 + -4.2) * -1.0) * -1.0 + Double.log((x[29] * -1.0 + -10.0) * -1.0) * -1.0 + Double.log((x[0] + -4.2) * -1.0) * -1.0 + Double.log((x[70] + -4.2) * -1.0) * -1.0 + Double.log((x[94] + -10.0) * -1.0) * -1.0 + Double.log((x[60] * -1.0 + -4.2) * -1.0) * -1.0 + Double.log((x[84] * -1.0 + -10.0) * -1.0) * -1.0 + Double.log((x[75] * -1.0 + -4.2) * -1.0) * -1.0 + Double.log((x[39] * -1.0 + -10.0) * -1.0) * -1.0 + Double.log((x[35] + -4.2) * -1.0) * -1.0 + Double.log((x[59] + -10.0) * -1.0) * -1.0 + Double.log((x[10] * -1.0 + -4.2) * -1.0) * -1.0 + Double.log((x[65] * -1.0 + -4.2) * -1.0) * -1.0 + Double.log((x[69] * -1.0 + -10.0) * -1.0) * -1.0 + Double.log((x[5] * -1.0 + -4.2) * -1.0) * -1.0 + Double.log((x[74] * -1.0 + -10.0) * -1.0) * -1.0 + Double.log((x[55] * -1.0 + -4.2) * -1.0) * -1.0 + Double.log((x[90] + -4.2) * -1.0) * -1.0 + Double.log((x[70] * -1.0 + -4.2) * -1.0) * -1.0 + Double.log((x[94] * -1.0 + -10.0) * -1.0) * -1.0 + Double.log((x[44] + -10.0) * -1.0) * -1.0 + Double.log((x[34] + -10.0) * -1.0) * -1.0 + Double.log((x[9] * -1.0 + -10.0) * -1.0) * -1.0
}

//=================== Inequality Constraints Gradient ===================
@inlinable
func inequalityConstraintsGradient(_ x: Vector) -> Vector {
var flat: Vector = zeros(100)
flat.withUnsafeMutableBufferPointer({ buffer in
buffer[0] = 1.0 / (x[0] * -1.0 + -4.2) + -1.0 / (x[0] + -4.2)
buffer[4] = -1.0 / (x[4] + -10.0) + 1.0 / (x[4] * -1.0 + -10.0)
buffer[5] = 1.0 / (x[5] * -1.0 + -4.2) + -1.0 / (x[5] + -4.2)
buffer[9] = -1.0 / (x[9] + -10.0) + 1.0 / (x[9] * -1.0 + -10.0)
buffer[10] = 1.0 / (x[10] * -1.0 + -4.2) + -1.0 / (x[10] + -4.2)
buffer[14] = -1.0 / (x[14] + -10.0) + 1.0 / (x[14] * -1.0 + -10.0)
buffer[15] = -1.0 / (x[15] + -4.2) + 1.0 / (x[15] * -1.0 + -4.2)
buffer[19] = 1.0 / (x[19] * -1.0 + -10.0) + -1.0 / (x[19] + -10.0)
buffer[20] = -1.0 / (x[20] + -4.2) + 1.0 / (x[20] * -1.0 + -4.2)
buffer[24] = -1.0 / (x[24] + -10.0) + 1.0 / (x[24] * -1.0 + -10.0)
buffer[25] = -1.0 / (x[25] + -4.2) + 1.0 / (x[25] * -1.0 + -4.2)
buffer[29] = -1.0 / (x[29] + -10.0) + 1.0 / (x[29] * -1.0 + -10.0)
buffer[30] = 1.0 / (x[30] * -1.0 + -4.2) + -1.0 / (x[30] + -4.2)
buffer[34] = -1.0 / (x[34] + -10.0) + 1.0 / (x[34] * -1.0 + -10.0)
buffer[35] = -1.0 / (x[35] + -4.2) + 1.0 / (x[35] * -1.0 + -4.2)
buffer[39] = 1.0 / (x[39] * -1.0 + -10.0) + -1.0 / (x[39] + -10.0)
buffer[40] = -1.0 / (x[40] + -4.2) + 1.0 / (x[40] * -1.0 + -4.2)
buffer[44] = 1.0 / (x[44] * -1.0 + -10.0) + -1.0 / (x[44] + -10.0)
buffer[45] = 1.0 / (x[45] * -1.0 + -4.2) + -1.0 / (x[45] + -4.2)
buffer[49] = -1.0 / (x[49] + -10.0) + 1.0 / (x[49] * -1.0 + -10.0)
buffer[50] = 1.0 / (x[50] * -1.0 + -4.2) + -1.0 / (x[50] + -4.2)
buffer[54] = -1.0 / (x[54] + -10.0) + 1.0 / (x[54] * -1.0 + -10.0)
buffer[55] = -1.0 / (x[55] + -4.2) + 1.0 / (x[55] * -1.0 + -4.2)
buffer[59] = -1.0 / (x[59] + -10.0) + 1.0 / (x[59] * -1.0 + -10.0)
buffer[60] = -1.0 / (x[60] + -4.2) + 1.0 / (x[60] * -1.0 + -4.2)
buffer[64] = -1.0 / (x[64] + -10.0) + 1.0 / (x[64] * -1.0 + -10.0)
buffer[65] = 1.0 / (x[65] * -1.0 + -4.2) + -1.0 / (x[65] + -4.2)
buffer[69] = -1.0 / (x[69] + -10.0) + 1.0 / (x[69] * -1.0 + -10.0)
buffer[70] = -1.0 / (x[70] + -4.2) + 1.0 / (x[70] * -1.0 + -4.2)
buffer[74] = 1.0 / (x[74] * -1.0 + -10.0) + -1.0 / (x[74] + -10.0)
buffer[75] = -1.0 / (x[75] + -4.2) + 1.0 / (x[75] * -1.0 + -4.2)
buffer[79] = 1.0 / (x[79] * -1.0 + -10.0) + -1.0 / (x[79] + -10.0)
buffer[80] = -1.0 / (x[80] + -4.2) + 1.0 / (x[80] * -1.0 + -4.2)
buffer[84] = 1.0 / (x[84] * -1.0 + -10.0) + -1.0 / (x[84] + -10.0)
buffer[85] = -1.0 / (x[85] + -4.2) + 1.0 / (x[85] * -1.0 + -4.2)
buffer[89] = -1.0 / (x[89] + -10.0) + 1.0 / (x[89] * -1.0 + -10.0)
buffer[90] = 1.0 / (x[90] * -1.0 + -4.2) + -1.0 / (x[90] + -4.2)
buffer[94] = 1.0 / (x[94] * -1.0 + -10.0) + -1.0 / (x[94] + -10.0)
buffer[95] = 1.0 / (x[95] * -1.0 + -4.2) + -1.0 / (x[95] + -4.2)
buffer[99] = -1.0 / (x[99] + -10.0) + 1.0 / (x[99] * -1.0 + -10.0)
})
return flat}

//=================== Inequality Constraints Hessians ===================
@inlinable
func inequalityConstraintsHessian(_ x: Vector) -> Matrix {
var flat: Vector = zeros(10000)
flat.withUnsafeMutableBufferPointer({ buffer in
buffer[0] = 1.0 / Double.pow(x[0] + -4.2, 2) + 1.0 / Double.pow(x[0] * -1.0 + -4.2, 2)
buffer[404] = 1.0 / Double.pow(x[4] * -1.0 + -10.0, 2) + 1.0 / Double.pow(x[4] + -10.0, 2)
buffer[505] = 1.0 / Double.pow(x[5] * -1.0 + -4.2, 2) + 1.0 / Double.pow(x[5] + -4.2, 2)
buffer[909] = 1.0 / Double.pow(x[9] * -1.0 + -10.0, 2) + 1.0 / Double.pow(x[9] + -10.0, 2)
buffer[1010] = 1.0 / Double.pow(x[10] + -4.2, 2) + 1.0 / Double.pow(x[10] * -1.0 + -4.2, 2)
buffer[1414] = 1.0 / Double.pow(x[14] * -1.0 + -10.0, 2) + 1.0 / Double.pow(x[14] + -10.0, 2)
buffer[1515] = 1.0 / Double.pow(x[15] + -4.2, 2) + 1.0 / Double.pow(x[15] * -1.0 + -4.2, 2)
buffer[1919] = 1.0 / Double.pow(x[19] + -10.0, 2) + 1.0 / Double.pow(x[19] * -1.0 + -10.0, 2)
buffer[2020] = 1.0 / Double.pow(x[20] * -1.0 + -4.2, 2) + 1.0 / Double.pow(x[20] + -4.2, 2)
buffer[2424] = 1.0 / Double.pow(x[24] * -1.0 + -10.0, 2) + 1.0 / Double.pow(x[24] + -10.0, 2)
buffer[2525] = 1.0 / Double.pow(x[25] + -4.2, 2) + 1.0 / Double.pow(x[25] * -1.0 + -4.2, 2)
buffer[2929] = 1.0 / Double.pow(x[29] + -10.0, 2) + 1.0 / Double.pow(x[29] * -1.0 + -10.0, 2)
buffer[3030] = 1.0 / Double.pow(x[30] + -4.2, 2) + 1.0 / Double.pow(x[30] * -1.0 + -4.2, 2)
buffer[3434] = 1.0 / Double.pow(x[34] * -1.0 + -10.0, 2) + 1.0 / Double.pow(x[34] + -10.0, 2)
buffer[3535] = 1.0 / Double.pow(x[35] + -4.2, 2) + 1.0 / Double.pow(x[35] * -1.0 + -4.2, 2)
buffer[3939] = 1.0 / Double.pow(x[39] + -10.0, 2) + 1.0 / Double.pow(x[39] * -1.0 + -10.0, 2)
buffer[4040] = 1.0 / Double.pow(x[40] * -1.0 + -4.2, 2) + 1.0 / Double.pow(x[40] + -4.2, 2)
buffer[4444] = 1.0 / Double.pow(x[44] * -1.0 + -10.0, 2) + 1.0 / Double.pow(x[44] + -10.0, 2)
buffer[4545] = 1.0 / Double.pow(x[45] + -4.2, 2) + 1.0 / Double.pow(x[45] * -1.0 + -4.2, 2)
buffer[4949] = 1.0 / Double.pow(x[49] + -10.0, 2) + 1.0 / Double.pow(x[49] * -1.0 + -10.0, 2)
buffer[5050] = 1.0 / Double.pow(x[50] + -4.2, 2) + 1.0 / Double.pow(x[50] * -1.0 + -4.2, 2)
buffer[5454] = 1.0 / Double.pow(x[54] * -1.0 + -10.0, 2) + 1.0 / Double.pow(x[54] + -10.0, 2)
buffer[5555] = 1.0 / Double.pow(x[55] + -4.2, 2) + 1.0 / Double.pow(x[55] * -1.0 + -4.2, 2)
buffer[5959] = 1.0 / Double.pow(x[59] * -1.0 + -10.0, 2) + 1.0 / Double.pow(x[59] + -10.0, 2)
buffer[6060] = 1.0 / Double.pow(x[60] + -4.2, 2) + 1.0 / Double.pow(x[60] * -1.0 + -4.2, 2)
buffer[6464] = 1.0 / Double.pow(x[64] * -1.0 + -10.0, 2) + 1.0 / Double.pow(x[64] + -10.0, 2)
buffer[6565] = 1.0 / Double.pow(x[65] + -4.2, 2) + 1.0 / Double.pow(x[65] * -1.0 + -4.2, 2)
buffer[6969] = 1.0 / Double.pow(x[69] * -1.0 + -10.0, 2) + 1.0 / Double.pow(x[69] + -10.0, 2)
buffer[7070] = 1.0 / Double.pow(x[70] * -1.0 + -4.2, 2) + 1.0 / Double.pow(x[70] + -4.2, 2)
buffer[7474] = 1.0 / Double.pow(x[74] * -1.0 + -10.0, 2) + 1.0 / Double.pow(x[74] + -10.0, 2)
buffer[7575] = 1.0 / Double.pow(x[75] + -4.2, 2) + 1.0 / Double.pow(x[75] * -1.0 + -4.2, 2)
buffer[7979] = 1.0 / Double.pow(x[79] + -10.0, 2) + 1.0 / Double.pow(x[79] * -1.0 + -10.0, 2)
buffer[8080] = 1.0 / Double.pow(x[80] + -4.2, 2) + 1.0 / Double.pow(x[80] * -1.0 + -4.2, 2)
buffer[8484] = 1.0 / Double.pow(x[84] * -1.0 + -10.0, 2) + 1.0 / Double.pow(x[84] + -10.0, 2)
buffer[8585] = 1.0 / Double.pow(x[85] + -4.2, 2) + 1.0 / Double.pow(x[85] * -1.0 + -4.2, 2)
buffer[8989] = 1.0 / Double.pow(x[89] + -10.0, 2) + 1.0 / Double.pow(x[89] * -1.0 + -10.0, 2)
buffer[9090] = 1.0 / Double.pow(x[90] + -4.2, 2) + 1.0 / Double.pow(x[90] * -1.0 + -4.2, 2)
buffer[9494] = 1.0 / Double.pow(x[94] + -10.0, 2) + 1.0 / Double.pow(x[94] * -1.0 + -10.0, 2)
buffer[9595] = 1.0 / Double.pow(x[95] + -4.2, 2) + 1.0 / Double.pow(x[95] * -1.0 + -4.2, 2)
buffer[9999] = 1.0 / Double.pow(x[99] + -10.0, 2) + 1.0 / Double.pow(x[99] * -1.0 + -10.0, 2)
})
return Matrix(100, 100, flat)}

}
#endif