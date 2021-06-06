#if !NO_NUMERIC_OBJECTIVE
import LASwift
import RealModule
import SwiftMPC


extension CartPoleNumericObjective: Objective {

var numVariables: Int { return 60 }
var numConstraints: Int { return 48 }

//=================== Extractors ===================

@inlinable
static func extractVector_angularVelocity(_ x: Vector) -> Vector {
var flat: Vector = zeros(12)
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
})
return flat
}

@inlinable
static func extractVector_angle(_ x: Vector) -> Vector {
var flat: Vector = zeros(12)
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
})
return flat
}

@inlinable
static func extractVector_velocity(_ x: Vector) -> Vector {
var flat: Vector = zeros(12)
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
})
return flat
}

@inlinable
static func extractVector_position(_ x: Vector) -> Vector {
var flat: Vector = zeros(12)
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
})
return flat
}

@inlinable
static func extractVector_force(_ x: Vector) -> Vector {
var flat: Vector = zeros(12)
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
})
return flat
}

//=================== Objective Value ===================
@inlinable
func value(_ x: Vector) -> Double {
return (Double.pow(x[15], 2) + Double.pow(x[45], 2) + Double.pow(x[55], 2) + Double.pow(x[20], 2) + Double.pow(x[40], 2) + Double.pow(x[50], 2) + Double.pow(x[0], 2) + Double.pow(x[10], 2) + Double.pow(x[35], 2) + Double.pow(x[30], 2) + Double.pow(x[5], 2) + Double.pow(x[25], 2)) * 0.05 + Double.pow(x[57], 2) + Double.pow(x[37], 2) + Double.pow(x[42], 2) + Double.pow(x[7], 2) + Double.pow(x[17], 2) + Double.pow(x[47], 2) + Double.pow(x[22], 2) + Double.pow(x[12], 2) + Double.pow(x[27], 2) + Double.pow(x[32], 2) + Double.pow(x[2], 2) + Double.pow(x[52], 2)
}

//=================== Gradient Value ===================
@inlinable
func gradient(_ x: Vector) -> Vector {
var flat: Vector = zeros(60)
flat.withUnsafeMutableBufferPointer({ buffer in
buffer[0] = x[0] * 0.1
buffer[2] = x[2] * 2.0
buffer[5] = x[5] * 0.1
buffer[7] = x[7] * 2.0
buffer[10] = x[10] * 0.1
buffer[12] = x[12] * 2.0
buffer[15] = x[15] * 0.1
buffer[17] = x[17] * 2.0
buffer[20] = x[20] * 0.1
buffer[22] = x[22] * 2.0
buffer[25] = x[25] * 0.1
buffer[27] = x[27] * 2.0
buffer[30] = x[30] * 0.1
buffer[32] = x[32] * 2.0
buffer[35] = x[35] * 0.1
buffer[37] = x[37] * 2.0
buffer[40] = x[40] * 0.1
buffer[42] = x[42] * 2.0
buffer[45] = x[45] * 0.1
buffer[47] = x[47] * 2.0
buffer[50] = x[50] * 0.1
buffer[52] = x[52] * 2.0
buffer[55] = x[55] * 0.1
buffer[57] = x[57] * 2.0
})
return flat
}

//=================== Hessian Value ===================
@inlinable
func hessian(_ x: Vector) -> Matrix {
var flat: Vector = zeros(3600)
flat.withUnsafeMutableBufferPointer({ buffer in
buffer[0] = 0.1
buffer[122] = 2.0
buffer[305] = 0.1
buffer[427] = 2.0
buffer[610] = 0.1
buffer[732] = 2.0
buffer[915] = 0.1
buffer[1037] = 2.0
buffer[1220] = 0.1
buffer[1342] = 2.0
buffer[1525] = 0.1
buffer[1647] = 2.0
buffer[1830] = 0.1
buffer[1952] = 2.0
buffer[2135] = 0.1
buffer[2257] = 2.0
buffer[2440] = 0.1
buffer[2562] = 2.0
buffer[2745] = 0.1
buffer[2867] = 2.0
buffer[3050] = 0.1
buffer[3172] = 2.0
buffer[3355] = 0.1
buffer[3477] = 2.0
})
return Matrix(60, 60, flat)
}

//=================== Equality Matrix Constraint ===================
var equalityConstraintMatrix: Matrix? {
var flat: Vector = zeros(2880)
flat.withUnsafeMutableBufferPointer({ buffer in
buffer[0] = 1.0
buffer[61] = 1.0
buffer[122] = 1.0
buffer[183] = 1.0
buffer[240] = -1.0 * 1.0
buffer[241] = -1.0 * 0.35
buffer[245] = 1.0
buffer[246] = -1.0 * 0.35
buffer[301] = -1.0 * 1.0
buffer[302] = -1.0 * ((((-1.0 * self.previousAngle[1] + 1.0) * ((Double.pow(Double.sin(self.previousAngle[1]), 2) * -1.0 + Double.pow(Double.cos(self.previousAngle[1]), 2)) * ((self.cartMass / self.poleMass + 1.0) * -1.3333333333333333 + Double.pow(Double.cos(self.previousAngle[1]), 2)) + Double.pow(Double.cos(self.previousAngle[1]), 2) * 2.0 * Double.pow(Double.sin(self.previousAngle[1]), 2))) / Double.pow((self.cartMass / self.poleMass + 1.0) * -1.3333333333333333 + Double.pow(Double.cos(self.previousAngle[1]), 2), 2) + (Double.cos(self.previousAngle[1]) * Double.sin(self.previousAngle[1])) / ((self.cartMass / self.poleMass + 1.0) * -1.3333333333333333 + Double.pow(Double.cos(self.previousAngle[1]), 2))) * 0.7 * self.gravity)
buffer[303] = -1.0 * (((2.0 * self.previousAngularVelocity[1] * (-1.0 * self.previousAngularVelocity[1] + 1.0) + Double.pow(self.previousAngularVelocity[1], 2)) * self.poleLength * Double.sin(self.previousAngle[1]) * -0.9333333333333332) / ((self.cartMass / self.poleMass + 1.0) * -1.3333333333333333 + Double.pow(Double.cos(self.previousAngle[1]), 2)))
buffer[304] = -1.0 * (-0.9333333333333332 / ((self.cartMass + self.poleMass) * -1.3333333333333333 + self.poleMass * Double.pow(Double.cos(self.previousAngle[1]), 2)))
buffer[306] = 1.0
buffer[362] = -1.0 * 1.0
buffer[363] = -1.0 * 0.35
buffer[367] = 1.0
buffer[368] = -1.0 * 0.35
buffer[422] = -1.0 * ((self.cartMass + self.poleMass) * (((-1.0 * self.previousAngle[1] + 1.0) * ((self.poleMass * Double.pow(Double.cos(self.previousAngle[1]), 2) * -1.0 * self.poleLength + 1.3333333333333333 * self.poleLength * (self.cartMass + self.poleMass)) * Double.cos(self.previousAngle[1]) + self.poleLength * self.poleMass * Double.pow(Double.sin(self.previousAngle[1]), 2) * -2.0 * Double.cos(self.previousAngle[1]))) / Double.pow(self.poleMass * Double.pow(Double.cos(self.previousAngle[1]), 2) * -1.0 * self.poleLength + 1.3333333333333333 * self.poleLength * (self.cartMass + self.poleMass), 2) + Double.sin(self.previousAngle[1]) / (self.poleMass * Double.pow(Double.cos(self.previousAngle[1]), 2) * -1.0 * self.poleLength + 1.3333333333333333 * self.poleLength * (self.cartMass + self.poleMass))) * 0.7 * self.gravity)
buffer[423] = -1.0 * (((2.0 * self.previousAngularVelocity[1] * (-1.0 * self.previousAngularVelocity[1] + 1.0) + Double.pow(self.previousAngularVelocity[1], 2)) * Double.sin(self.previousAngle[1]) * -0.7) / (Double.cos(self.previousAngle[1]) * -1.0 + (self.cartMass / self.poleMass + 1.0) * 1.3333333333333333) + 1.0)
buffer[424] = -1.0 * (-0.7 / (1.3333333333333333 * self.poleLength * (self.cartMass + self.poleMass) + -1.0 * self.poleLength * self.poleMass * Double.cos(self.previousAngle[1])))
buffer[428] = 1.0
buffer[485] = -1.0 * 1.0
buffer[486] = -1.0 * 0.35
buffer[490] = 1.0
buffer[491] = -1.0 * 0.35
buffer[546] = -1.0 * 1.0
buffer[547] = -1.0 * ((((-1.0 * self.previousAngle[2] + 1.0) * ((Double.pow(Double.sin(self.previousAngle[2]), 2) * -1.0 + Double.pow(Double.cos(self.previousAngle[2]), 2)) * ((self.cartMass / self.poleMass + 1.0) * -1.3333333333333333 + Double.pow(Double.cos(self.previousAngle[2]), 2)) + Double.pow(Double.sin(self.previousAngle[2]), 2) * 2.0 * Double.pow(Double.cos(self.previousAngle[2]), 2))) / Double.pow((self.cartMass / self.poleMass + 1.0) * -1.3333333333333333 + Double.pow(Double.cos(self.previousAngle[2]), 2), 2) + (Double.cos(self.previousAngle[2]) * Double.sin(self.previousAngle[2])) / ((self.cartMass / self.poleMass + 1.0) * -1.3333333333333333 + Double.pow(Double.cos(self.previousAngle[2]), 2))) * 0.7 * self.gravity)
buffer[548] = -1.0 * (((2.0 * self.previousAngularVelocity[2] * (-1.0 * self.previousAngularVelocity[2] + 1.0) + Double.pow(self.previousAngularVelocity[2], 2)) * self.poleLength * Double.sin(self.previousAngle[2]) * -0.9333333333333332) / ((self.cartMass / self.poleMass + 1.0) * -1.3333333333333333 + Double.pow(Double.cos(self.previousAngle[2]), 2)))
buffer[549] = -1.0 * (-0.9333333333333332 / ((self.cartMass + self.poleMass) * -1.3333333333333333 + self.poleMass * Double.pow(Double.cos(self.previousAngle[2]), 2)))
buffer[551] = 1.0
buffer[607] = -1.0 * 1.0
buffer[608] = -1.0 * 0.35
buffer[612] = 1.0
buffer[613] = -1.0 * 0.35
buffer[667] = -1.0 * ((self.cartMass + self.poleMass) * (((self.poleLength * self.poleMass * Double.pow(Double.sin(self.previousAngle[2]), 2) * -2.0 * Double.cos(self.previousAngle[2]) + (1.3333333333333333 * self.poleLength * (self.cartMass + self.poleMass) + self.poleMass * Double.pow(Double.cos(self.previousAngle[2]), 2) * -1.0 * self.poleLength) * Double.cos(self.previousAngle[2])) * (-1.0 * self.previousAngle[2] + 1.0)) / Double.pow(1.3333333333333333 * self.poleLength * (self.cartMass + self.poleMass) + self.poleMass * Double.pow(Double.cos(self.previousAngle[2]), 2) * -1.0 * self.poleLength, 2) + Double.sin(self.previousAngle[2]) / (1.3333333333333333 * self.poleLength * (self.cartMass + self.poleMass) + self.poleMass * Double.pow(Double.cos(self.previousAngle[2]), 2) * -1.0 * self.poleLength)) * 0.7 * self.gravity)
buffer[668] = -1.0 * (((2.0 * self.previousAngularVelocity[2] * (-1.0 * self.previousAngularVelocity[2] + 1.0) + Double.pow(self.previousAngularVelocity[2], 2)) * Double.sin(self.previousAngle[2]) * -0.7) / ((self.cartMass / self.poleMass + 1.0) * 1.3333333333333333 + Double.cos(self.previousAngle[2]) * -1.0) + 1.0)
buffer[669] = -1.0 * (-0.7 / (1.3333333333333333 * self.poleLength * (self.cartMass + self.poleMass) + -1.0 * self.poleLength * self.poleMass * Double.cos(self.previousAngle[2])))
buffer[673] = 1.0
buffer[730] = -1.0 * 1.0
buffer[731] = -1.0 * 0.35
buffer[735] = 1.0
buffer[736] = -1.0 * 0.35
buffer[791] = -1.0 * 1.0
buffer[792] = -1.0 * (((Double.cos(self.previousAngle[3]) * Double.sin(self.previousAngle[3])) / ((self.cartMass / self.poleMass + 1.0) * -1.3333333333333333 + Double.pow(Double.cos(self.previousAngle[3]), 2)) + ((-1.0 * self.previousAngle[3] + 1.0) * (Double.pow(Double.sin(self.previousAngle[3]), 2) * 2.0 * Double.pow(Double.cos(self.previousAngle[3]), 2) + (Double.pow(Double.sin(self.previousAngle[3]), 2) * -1.0 + Double.pow(Double.cos(self.previousAngle[3]), 2)) * ((self.cartMass / self.poleMass + 1.0) * -1.3333333333333333 + Double.pow(Double.cos(self.previousAngle[3]), 2)))) / Double.pow((self.cartMass / self.poleMass + 1.0) * -1.3333333333333333 + Double.pow(Double.cos(self.previousAngle[3]), 2), 2)) * 0.7 * self.gravity)
buffer[793] = -1.0 * (((2.0 * self.previousAngularVelocity[3] * (-1.0 * self.previousAngularVelocity[3] + 1.0) + Double.pow(self.previousAngularVelocity[3], 2)) * self.poleLength * Double.sin(self.previousAngle[3]) * -0.9333333333333332) / ((self.cartMass / self.poleMass + 1.0) * -1.3333333333333333 + Double.pow(Double.cos(self.previousAngle[3]), 2)))
buffer[794] = -1.0 * (-0.9333333333333332 / ((self.cartMass + self.poleMass) * -1.3333333333333333 + self.poleMass * Double.pow(Double.cos(self.previousAngle[3]), 2)))
buffer[796] = 1.0
buffer[852] = -1.0 * 1.0
buffer[853] = -1.0 * 0.35
buffer[857] = 1.0
buffer[858] = -1.0 * 0.35
buffer[912] = -1.0 * ((self.cartMass + self.poleMass) * (Double.sin(self.previousAngle[3]) / (1.3333333333333333 * self.poleLength * (self.cartMass + self.poleMass) + self.poleMass * Double.pow(Double.cos(self.previousAngle[3]), 2) * -1.0 * self.poleLength) + ((-1.0 * self.previousAngle[3] + 1.0) * ((1.3333333333333333 * self.poleLength * (self.cartMass + self.poleMass) + self.poleMass * Double.pow(Double.cos(self.previousAngle[3]), 2) * -1.0 * self.poleLength) * Double.cos(self.previousAngle[3]) + self.poleLength * self.poleMass * Double.pow(Double.sin(self.previousAngle[3]), 2) * -2.0 * Double.cos(self.previousAngle[3]))) / Double.pow(1.3333333333333333 * self.poleLength * (self.cartMass + self.poleMass) + self.poleMass * Double.pow(Double.cos(self.previousAngle[3]), 2) * -1.0 * self.poleLength, 2)) * 0.7 * self.gravity)
buffer[913] = -1.0 * (((2.0 * self.previousAngularVelocity[3] * (-1.0 * self.previousAngularVelocity[3] + 1.0) + Double.pow(self.previousAngularVelocity[3], 2)) * Double.sin(self.previousAngle[3]) * -0.7) / (Double.cos(self.previousAngle[3]) * -1.0 + (self.cartMass / self.poleMass + 1.0) * 1.3333333333333333) + 1.0)
buffer[914] = -1.0 * (-0.7 / (1.3333333333333333 * self.poleLength * (self.cartMass + self.poleMass) + -1.0 * self.poleLength * self.poleMass * Double.cos(self.previousAngle[3])))
buffer[918] = 1.0
buffer[975] = -1.0 * 1.0
buffer[976] = -1.0 * 0.35
buffer[980] = 1.0
buffer[981] = -1.0 * 0.35
buffer[1036] = -1.0 * 1.0
buffer[1037] = -1.0 * ((((Double.pow(Double.sin(self.previousAngle[4]), 2) * 2.0 * Double.pow(Double.cos(self.previousAngle[4]), 2) + (Double.pow(Double.sin(self.previousAngle[4]), 2) * -1.0 + Double.pow(Double.cos(self.previousAngle[4]), 2)) * ((self.cartMass / self.poleMass + 1.0) * -1.3333333333333333 + Double.pow(Double.cos(self.previousAngle[4]), 2))) * (-1.0 * self.previousAngle[4] + 1.0)) / Double.pow((self.cartMass / self.poleMass + 1.0) * -1.3333333333333333 + Double.pow(Double.cos(self.previousAngle[4]), 2), 2) + (Double.cos(self.previousAngle[4]) * Double.sin(self.previousAngle[4])) / ((self.cartMass / self.poleMass + 1.0) * -1.3333333333333333 + Double.pow(Double.cos(self.previousAngle[4]), 2))) * 0.7 * self.gravity)
buffer[1038] = -1.0 * (((2.0 * self.previousAngularVelocity[4] * (-1.0 * self.previousAngularVelocity[4] + 1.0) + Double.pow(self.previousAngularVelocity[4], 2)) * self.poleLength * Double.sin(self.previousAngle[4]) * -0.9333333333333332) / ((self.cartMass / self.poleMass + 1.0) * -1.3333333333333333 + Double.pow(Double.cos(self.previousAngle[4]), 2)))
buffer[1039] = -1.0 * (-0.9333333333333332 / ((self.cartMass + self.poleMass) * -1.3333333333333333 + self.poleMass * Double.pow(Double.cos(self.previousAngle[4]), 2)))
buffer[1041] = 1.0
buffer[1097] = -1.0 * 1.0
buffer[1098] = -1.0 * 0.35
buffer[1102] = 1.0
buffer[1103] = -1.0 * 0.35
buffer[1157] = -1.0 * ((((self.poleLength * self.poleMass * Double.pow(Double.sin(self.previousAngle[4]), 2) * -2.0 * Double.cos(self.previousAngle[4]) + (1.3333333333333333 * self.poleLength * (self.cartMass + self.poleMass) + self.poleMass * Double.pow(Double.cos(self.previousAngle[4]), 2) * -1.0 * self.poleLength) * Double.cos(self.previousAngle[4])) * (-1.0 * self.previousAngle[4] + 1.0)) / Double.pow(1.3333333333333333 * self.poleLength * (self.cartMass + self.poleMass) + self.poleMass * Double.pow(Double.cos(self.previousAngle[4]), 2) * -1.0 * self.poleLength, 2) + Double.sin(self.previousAngle[4]) / (1.3333333333333333 * self.poleLength * (self.cartMass + self.poleMass) + self.poleMass * Double.pow(Double.cos(self.previousAngle[4]), 2) * -1.0 * self.poleLength)) * (self.cartMass + self.poleMass) * 0.7 * self.gravity)
buffer[1158] = -1.0 * (((2.0 * self.previousAngularVelocity[4] * (-1.0 * self.previousAngularVelocity[4] + 1.0) + Double.pow(self.previousAngularVelocity[4], 2)) * Double.sin(self.previousAngle[4]) * -0.7) / ((self.cartMass / self.poleMass + 1.0) * 1.3333333333333333 + Double.cos(self.previousAngle[4]) * -1.0) + 1.0)
buffer[1159] = -1.0 * (-0.7 / (-1.0 * self.poleLength * self.poleMass * Double.cos(self.previousAngle[4]) + 1.3333333333333333 * self.poleLength * (self.cartMass + self.poleMass)))
buffer[1163] = 1.0
buffer[1220] = -1.0 * 1.0
buffer[1221] = -1.0 * 0.35
buffer[1225] = 1.0
buffer[1226] = -1.0 * 0.35
buffer[1281] = -1.0 * 1.0
buffer[1282] = -1.0 * (((Double.cos(self.previousAngle[5]) * Double.sin(self.previousAngle[5])) / ((self.cartMass / self.poleMass + 1.0) * -1.3333333333333333 + Double.pow(Double.cos(self.previousAngle[5]), 2)) + ((Double.pow(Double.sin(self.previousAngle[5]), 2) * 2.0 * Double.pow(Double.cos(self.previousAngle[5]), 2) + (Double.pow(Double.sin(self.previousAngle[5]), 2) * -1.0 + Double.pow(Double.cos(self.previousAngle[5]), 2)) * ((self.cartMass / self.poleMass + 1.0) * -1.3333333333333333 + Double.pow(Double.cos(self.previousAngle[5]), 2))) * (-1.0 * self.previousAngle[5] + 1.0)) / Double.pow((self.cartMass / self.poleMass + 1.0) * -1.3333333333333333 + Double.pow(Double.cos(self.previousAngle[5]), 2), 2)) * 0.7 * self.gravity)
buffer[1283] = -1.0 * (((2.0 * self.previousAngularVelocity[5] * (-1.0 * self.previousAngularVelocity[5] + 1.0) + Double.pow(self.previousAngularVelocity[5], 2)) * self.poleLength * Double.sin(self.previousAngle[5]) * -0.9333333333333332) / ((self.cartMass / self.poleMass + 1.0) * -1.3333333333333333 + Double.pow(Double.cos(self.previousAngle[5]), 2)))
buffer[1284] = -1.0 * (-0.9333333333333332 / ((self.cartMass + self.poleMass) * -1.3333333333333333 + self.poleMass * Double.pow(Double.cos(self.previousAngle[5]), 2)))
buffer[1286] = 1.0
buffer[1342] = -1.0 * 1.0
buffer[1343] = -1.0 * 0.35
buffer[1347] = 1.0
buffer[1348] = -1.0 * 0.35
buffer[1402] = -1.0 * ((self.cartMass + self.poleMass) * ((((1.3333333333333333 * self.poleLength * (self.cartMass + self.poleMass) + self.poleMass * Double.pow(Double.cos(self.previousAngle[5]), 2) * -1.0 * self.poleLength) * Double.cos(self.previousAngle[5]) + self.poleLength * self.poleMass * Double.pow(Double.sin(self.previousAngle[5]), 2) * -2.0 * Double.cos(self.previousAngle[5])) * (-1.0 * self.previousAngle[5] + 1.0)) / Double.pow(1.3333333333333333 * self.poleLength * (self.cartMass + self.poleMass) + self.poleMass * Double.pow(Double.cos(self.previousAngle[5]), 2) * -1.0 * self.poleLength, 2) + Double.sin(self.previousAngle[5]) / (1.3333333333333333 * self.poleLength * (self.cartMass + self.poleMass) + self.poleMass * Double.pow(Double.cos(self.previousAngle[5]), 2) * -1.0 * self.poleLength)) * 0.7 * self.gravity)
buffer[1403] = -1.0 * (((2.0 * self.previousAngularVelocity[5] * (-1.0 * self.previousAngularVelocity[5] + 1.0) + Double.pow(self.previousAngularVelocity[5], 2)) * Double.sin(self.previousAngle[5]) * -0.7) / ((self.cartMass / self.poleMass + 1.0) * 1.3333333333333333 + Double.cos(self.previousAngle[5]) * -1.0) + 1.0)
buffer[1404] = -1.0 * (-0.7 / (1.3333333333333333 * self.poleLength * (self.cartMass + self.poleMass) + -1.0 * self.poleLength * self.poleMass * Double.cos(self.previousAngle[5])))
buffer[1408] = 1.0
buffer[1465] = -1.0 * 1.0
buffer[1466] = -1.0 * 0.35
buffer[1470] = 1.0
buffer[1471] = -1.0 * 0.35
buffer[1526] = -1.0 * 1.0
buffer[1527] = -1.0 * ((((Double.pow(Double.cos(self.previousAngle[6]), 2) * 2.0 * Double.pow(Double.sin(self.previousAngle[6]), 2) + ((self.cartMass / self.poleMass + 1.0) * -1.3333333333333333 + Double.pow(Double.cos(self.previousAngle[6]), 2)) * (Double.pow(Double.sin(self.previousAngle[6]), 2) * -1.0 + Double.pow(Double.cos(self.previousAngle[6]), 2))) * (-1.0 * self.previousAngle[6] + 1.0)) / Double.pow((self.cartMass / self.poleMass + 1.0) * -1.3333333333333333 + Double.pow(Double.cos(self.previousAngle[6]), 2), 2) + (Double.cos(self.previousAngle[6]) * Double.sin(self.previousAngle[6])) / ((self.cartMass / self.poleMass + 1.0) * -1.3333333333333333 + Double.pow(Double.cos(self.previousAngle[6]), 2))) * 0.7 * self.gravity)
buffer[1528] = -1.0 * (((2.0 * self.previousAngularVelocity[6] * (-1.0 * self.previousAngularVelocity[6] + 1.0) + Double.pow(self.previousAngularVelocity[6], 2)) * self.poleLength * Double.sin(self.previousAngle[6]) * -0.9333333333333332) / ((self.cartMass / self.poleMass + 1.0) * -1.3333333333333333 + Double.pow(Double.cos(self.previousAngle[6]), 2)))
buffer[1529] = -1.0 * (-0.9333333333333332 / ((self.cartMass + self.poleMass) * -1.3333333333333333 + self.poleMass * Double.pow(Double.cos(self.previousAngle[6]), 2)))
buffer[1531] = 1.0
buffer[1587] = -1.0 * 1.0
buffer[1588] = -1.0 * 0.35
buffer[1592] = 1.0
buffer[1593] = -1.0 * 0.35
buffer[1647] = -1.0 * ((Double.sin(self.previousAngle[6]) / (1.3333333333333333 * self.poleLength * (self.cartMass + self.poleMass) + self.poleMass * Double.pow(Double.cos(self.previousAngle[6]), 2) * -1.0 * self.poleLength) + ((self.poleLength * self.poleMass * Double.pow(Double.sin(self.previousAngle[6]), 2) * -2.0 * Double.cos(self.previousAngle[6]) + (1.3333333333333333 * self.poleLength * (self.cartMass + self.poleMass) + self.poleMass * Double.pow(Double.cos(self.previousAngle[6]), 2) * -1.0 * self.poleLength) * Double.cos(self.previousAngle[6])) * (-1.0 * self.previousAngle[6] + 1.0)) / Double.pow(1.3333333333333333 * self.poleLength * (self.cartMass + self.poleMass) + self.poleMass * Double.pow(Double.cos(self.previousAngle[6]), 2) * -1.0 * self.poleLength, 2)) * (self.cartMass + self.poleMass) * 0.7 * self.gravity)
buffer[1648] = -1.0 * (((2.0 * self.previousAngularVelocity[6] * (-1.0 * self.previousAngularVelocity[6] + 1.0) + Double.pow(self.previousAngularVelocity[6], 2)) * Double.sin(self.previousAngle[6]) * -0.7) / ((self.cartMass / self.poleMass + 1.0) * 1.3333333333333333 + Double.cos(self.previousAngle[6]) * -1.0) + 1.0)
buffer[1649] = -1.0 * (-0.7 / (1.3333333333333333 * self.poleLength * (self.cartMass + self.poleMass) + -1.0 * self.poleLength * self.poleMass * Double.cos(self.previousAngle[6])))
buffer[1653] = 1.0
buffer[1710] = -1.0 * 1.0
buffer[1711] = -1.0 * 0.35
buffer[1715] = 1.0
buffer[1716] = -1.0 * 0.35
buffer[1771] = -1.0 * 1.0
buffer[1772] = -1.0 * ((((-1.0 * self.previousAngle[7] + 1.0) * (Double.pow(Double.cos(self.previousAngle[7]), 2) * 2.0 * Double.pow(Double.sin(self.previousAngle[7]), 2) + (Double.pow(Double.sin(self.previousAngle[7]), 2) * -1.0 + Double.pow(Double.cos(self.previousAngle[7]), 2)) * ((self.cartMass / self.poleMass + 1.0) * -1.3333333333333333 + Double.pow(Double.cos(self.previousAngle[7]), 2)))) / Double.pow((self.cartMass / self.poleMass + 1.0) * -1.3333333333333333 + Double.pow(Double.cos(self.previousAngle[7]), 2), 2) + (Double.cos(self.previousAngle[7]) * Double.sin(self.previousAngle[7])) / ((self.cartMass / self.poleMass + 1.0) * -1.3333333333333333 + Double.pow(Double.cos(self.previousAngle[7]), 2))) * 0.7 * self.gravity)
buffer[1773] = -1.0 * (((2.0 * self.previousAngularVelocity[7] * (-1.0 * self.previousAngularVelocity[7] + 1.0) + Double.pow(self.previousAngularVelocity[7], 2)) * self.poleLength * Double.sin(self.previousAngle[7]) * -0.9333333333333332) / ((self.cartMass / self.poleMass + 1.0) * -1.3333333333333333 + Double.pow(Double.cos(self.previousAngle[7]), 2)))
buffer[1774] = -1.0 * (-0.9333333333333332 / (self.poleMass * Double.pow(Double.cos(self.previousAngle[7]), 2) + (self.cartMass + self.poleMass) * -1.3333333333333333))
buffer[1776] = 1.0
buffer[1832] = -1.0 * 1.0
buffer[1833] = -1.0 * 0.35
buffer[1837] = 1.0
buffer[1838] = -1.0 * 0.35
buffer[1892] = -1.0 * ((self.cartMass + self.poleMass) * (Double.sin(self.previousAngle[7]) / (1.3333333333333333 * self.poleLength * (self.cartMass + self.poleMass) + self.poleMass * Double.pow(Double.cos(self.previousAngle[7]), 2) * -1.0 * self.poleLength) + ((-1.0 * self.previousAngle[7] + 1.0) * ((1.3333333333333333 * self.poleLength * (self.cartMass + self.poleMass) + self.poleMass * Double.pow(Double.cos(self.previousAngle[7]), 2) * -1.0 * self.poleLength) * Double.cos(self.previousAngle[7]) + self.poleLength * self.poleMass * Double.pow(Double.sin(self.previousAngle[7]), 2) * -2.0 * Double.cos(self.previousAngle[7]))) / Double.pow(1.3333333333333333 * self.poleLength * (self.cartMass + self.poleMass) + self.poleMass * Double.pow(Double.cos(self.previousAngle[7]), 2) * -1.0 * self.poleLength, 2)) * 0.7 * self.gravity)
buffer[1893] = -1.0 * (((2.0 * self.previousAngularVelocity[7] * (-1.0 * self.previousAngularVelocity[7] + 1.0) + Double.pow(self.previousAngularVelocity[7], 2)) * Double.sin(self.previousAngle[7]) * -0.7) / (Double.cos(self.previousAngle[7]) * -1.0 + (self.cartMass / self.poleMass + 1.0) * 1.3333333333333333) + 1.0)
buffer[1894] = -1.0 * (-0.7 / (1.3333333333333333 * self.poleLength * (self.cartMass + self.poleMass) + -1.0 * self.poleLength * self.poleMass * Double.cos(self.previousAngle[7])))
buffer[1898] = 1.0
buffer[1955] = -1.0 * 1.0
buffer[1956] = -1.0 * 0.35
buffer[1960] = 1.0
buffer[1961] = -1.0 * 0.35
buffer[2016] = -1.0 * 1.0
buffer[2017] = -1.0 * (((Double.cos(self.previousAngle[8]) * Double.sin(self.previousAngle[8])) / ((self.cartMass / self.poleMass + 1.0) * -1.3333333333333333 + Double.pow(Double.cos(self.previousAngle[8]), 2)) + ((((self.cartMass / self.poleMass + 1.0) * -1.3333333333333333 + Double.pow(Double.cos(self.previousAngle[8]), 2)) * (Double.pow(Double.sin(self.previousAngle[8]), 2) * -1.0 + Double.pow(Double.cos(self.previousAngle[8]), 2)) + Double.pow(Double.sin(self.previousAngle[8]), 2) * 2.0 * Double.pow(Double.cos(self.previousAngle[8]), 2)) * (-1.0 * self.previousAngle[8] + 1.0)) / Double.pow((self.cartMass / self.poleMass + 1.0) * -1.3333333333333333 + Double.pow(Double.cos(self.previousAngle[8]), 2), 2)) * 0.7 * self.gravity)
buffer[2018] = -1.0 * (((2.0 * self.previousAngularVelocity[8] * (-1.0 * self.previousAngularVelocity[8] + 1.0) + Double.pow(self.previousAngularVelocity[8], 2)) * self.poleLength * Double.sin(self.previousAngle[8]) * -0.9333333333333332) / ((self.cartMass / self.poleMass + 1.0) * -1.3333333333333333 + Double.pow(Double.cos(self.previousAngle[8]), 2)))
buffer[2019] = -1.0 * (-0.9333333333333332 / ((self.cartMass + self.poleMass) * -1.3333333333333333 + self.poleMass * Double.pow(Double.cos(self.previousAngle[8]), 2)))
buffer[2021] = 1.0
buffer[2077] = -1.0 * 1.0
buffer[2078] = -1.0 * 0.35
buffer[2082] = 1.0
buffer[2083] = -1.0 * 0.35
buffer[2137] = -1.0 * ((Double.sin(self.previousAngle[8]) / (1.3333333333333333 * self.poleLength * (self.cartMass + self.poleMass) + self.poleMass * Double.pow(Double.cos(self.previousAngle[8]), 2) * -1.0 * self.poleLength) + ((-1.0 * self.previousAngle[8] + 1.0) * ((1.3333333333333333 * self.poleLength * (self.cartMass + self.poleMass) + self.poleMass * Double.pow(Double.cos(self.previousAngle[8]), 2) * -1.0 * self.poleLength) * Double.cos(self.previousAngle[8]) + self.poleLength * self.poleMass * Double.pow(Double.sin(self.previousAngle[8]), 2) * -2.0 * Double.cos(self.previousAngle[8]))) / Double.pow(1.3333333333333333 * self.poleLength * (self.cartMass + self.poleMass) + self.poleMass * Double.pow(Double.cos(self.previousAngle[8]), 2) * -1.0 * self.poleLength, 2)) * (self.cartMass + self.poleMass) * 0.7 * self.gravity)
buffer[2138] = -1.0 * (((2.0 * self.previousAngularVelocity[8] * (-1.0 * self.previousAngularVelocity[8] + 1.0) + Double.pow(self.previousAngularVelocity[8], 2)) * Double.sin(self.previousAngle[8]) * -0.7) / (Double.cos(self.previousAngle[8]) * -1.0 + (self.cartMass / self.poleMass + 1.0) * 1.3333333333333333) + 1.0)
buffer[2139] = -1.0 * (-0.7 / (-1.0 * self.poleLength * self.poleMass * Double.cos(self.previousAngle[8]) + 1.3333333333333333 * self.poleLength * (self.cartMass + self.poleMass)))
buffer[2143] = 1.0
buffer[2200] = -1.0 * 1.0
buffer[2201] = -1.0 * 0.35
buffer[2205] = 1.0
buffer[2206] = -1.0 * 0.35
buffer[2261] = -1.0 * 1.0
buffer[2262] = -1.0 * (((Double.cos(self.previousAngle[9]) * Double.sin(self.previousAngle[9])) / ((self.cartMass / self.poleMass + 1.0) * -1.3333333333333333 + Double.pow(Double.cos(self.previousAngle[9]), 2)) + ((-1.0 * self.previousAngle[9] + 1.0) * (((self.cartMass / self.poleMass + 1.0) * -1.3333333333333333 + Double.pow(Double.cos(self.previousAngle[9]), 2)) * (Double.pow(Double.sin(self.previousAngle[9]), 2) * -1.0 + Double.pow(Double.cos(self.previousAngle[9]), 2)) + Double.pow(Double.sin(self.previousAngle[9]), 2) * 2.0 * Double.pow(Double.cos(self.previousAngle[9]), 2))) / Double.pow((self.cartMass / self.poleMass + 1.0) * -1.3333333333333333 + Double.pow(Double.cos(self.previousAngle[9]), 2), 2)) * 0.7 * self.gravity)
buffer[2263] = -1.0 * (((2.0 * self.previousAngularVelocity[9] * (-1.0 * self.previousAngularVelocity[9] + 1.0) + Double.pow(self.previousAngularVelocity[9], 2)) * self.poleLength * Double.sin(self.previousAngle[9]) * -0.9333333333333332) / ((self.cartMass / self.poleMass + 1.0) * -1.3333333333333333 + Double.pow(Double.cos(self.previousAngle[9]), 2)))
buffer[2264] = -1.0 * (-0.9333333333333332 / ((self.cartMass + self.poleMass) * -1.3333333333333333 + self.poleMass * Double.pow(Double.cos(self.previousAngle[9]), 2)))
buffer[2266] = 1.0
buffer[2322] = -1.0 * 1.0
buffer[2323] = -1.0 * 0.35
buffer[2327] = 1.0
buffer[2328] = -1.0 * 0.35
buffer[2382] = -1.0 * ((self.cartMass + self.poleMass) * (Double.sin(self.previousAngle[9]) / (self.poleMass * Double.pow(Double.cos(self.previousAngle[9]), 2) * -1.0 * self.poleLength + 1.3333333333333333 * self.poleLength * (self.cartMass + self.poleMass)) + ((self.poleLength * self.poleMass * Double.pow(Double.sin(self.previousAngle[9]), 2) * -2.0 * Double.cos(self.previousAngle[9]) + (self.poleMass * Double.pow(Double.cos(self.previousAngle[9]), 2) * -1.0 * self.poleLength + 1.3333333333333333 * self.poleLength * (self.cartMass + self.poleMass)) * Double.cos(self.previousAngle[9])) * (-1.0 * self.previousAngle[9] + 1.0)) / Double.pow(self.poleMass * Double.pow(Double.cos(self.previousAngle[9]), 2) * -1.0 * self.poleLength + 1.3333333333333333 * self.poleLength * (self.cartMass + self.poleMass), 2)) * 0.7 * self.gravity)
buffer[2383] = -1.0 * (((2.0 * self.previousAngularVelocity[9] * (-1.0 * self.previousAngularVelocity[9] + 1.0) + Double.pow(self.previousAngularVelocity[9], 2)) * Double.sin(self.previousAngle[9]) * -0.7) / (Double.cos(self.previousAngle[9]) * -1.0 + (self.cartMass / self.poleMass + 1.0) * 1.3333333333333333) + 1.0)
buffer[2384] = -1.0 * (-0.7 / (1.3333333333333333 * self.poleLength * (self.cartMass + self.poleMass) + -1.0 * self.poleLength * self.poleMass * Double.cos(self.previousAngle[9])))
buffer[2388] = 1.0
buffer[2445] = -1.0 * 1.0
buffer[2446] = -1.0 * 0.35
buffer[2450] = 1.0
buffer[2451] = -1.0 * 0.35
buffer[2506] = -1.0 * 1.0
buffer[2507] = -1.0 * (((Double.cos(self.previousAngle[10]) * Double.sin(self.previousAngle[10])) / ((self.cartMass / self.poleMass + 1.0) * -1.3333333333333333 + Double.pow(Double.cos(self.previousAngle[10]), 2)) + ((-1.0 * self.previousAngle[10] + 1.0) * (Double.pow(Double.cos(self.previousAngle[10]), 2) * 2.0 * Double.pow(Double.sin(self.previousAngle[10]), 2) + (Double.pow(Double.sin(self.previousAngle[10]), 2) * -1.0 + Double.pow(Double.cos(self.previousAngle[10]), 2)) * ((self.cartMass / self.poleMass + 1.0) * -1.3333333333333333 + Double.pow(Double.cos(self.previousAngle[10]), 2)))) / Double.pow((self.cartMass / self.poleMass + 1.0) * -1.3333333333333333 + Double.pow(Double.cos(self.previousAngle[10]), 2), 2)) * 0.7 * self.gravity)
buffer[2508] = -1.0 * (((2.0 * self.previousAngularVelocity[10] * (-1.0 * self.previousAngularVelocity[10] + 1.0) + Double.pow(self.previousAngularVelocity[10], 2)) * self.poleLength * Double.sin(self.previousAngle[10]) * -0.9333333333333332) / ((self.cartMass / self.poleMass + 1.0) * -1.3333333333333333 + Double.pow(Double.cos(self.previousAngle[10]), 2)))
buffer[2509] = -1.0 * (-0.9333333333333332 / ((self.cartMass + self.poleMass) * -1.3333333333333333 + self.poleMass * Double.pow(Double.cos(self.previousAngle[10]), 2)))
buffer[2511] = 1.0
buffer[2567] = -1.0 * 1.0
buffer[2568] = -1.0 * 0.35
buffer[2572] = 1.0
buffer[2573] = -1.0 * 0.35
buffer[2627] = -1.0 * ((Double.sin(self.previousAngle[10]) / (self.poleMass * Double.pow(Double.cos(self.previousAngle[10]), 2) * -1.0 * self.poleLength + 1.3333333333333333 * self.poleLength * (self.cartMass + self.poleMass)) + ((-1.0 * self.previousAngle[10] + 1.0) * (self.poleLength * self.poleMass * Double.pow(Double.sin(self.previousAngle[10]), 2) * -2.0 * Double.cos(self.previousAngle[10]) + (self.poleMass * Double.pow(Double.cos(self.previousAngle[10]), 2) * -1.0 * self.poleLength + 1.3333333333333333 * self.poleLength * (self.cartMass + self.poleMass)) * Double.cos(self.previousAngle[10]))) / Double.pow(self.poleMass * Double.pow(Double.cos(self.previousAngle[10]), 2) * -1.0 * self.poleLength + 1.3333333333333333 * self.poleLength * (self.cartMass + self.poleMass), 2)) * (self.cartMass + self.poleMass) * 0.7 * self.gravity)
buffer[2628] = -1.0 * (((2.0 * self.previousAngularVelocity[10] * (-1.0 * self.previousAngularVelocity[10] + 1.0) + Double.pow(self.previousAngularVelocity[10], 2)) * Double.sin(self.previousAngle[10]) * -0.7) / ((self.cartMass / self.poleMass + 1.0) * 1.3333333333333333 + Double.cos(self.previousAngle[10]) * -1.0) + 1.0)
buffer[2629] = -1.0 * (-0.7 / (-1.0 * self.poleLength * self.poleMass * Double.cos(self.previousAngle[10]) + 1.3333333333333333 * self.poleLength * (self.cartMass + self.poleMass)))
buffer[2633] = 1.0
buffer[2690] = -1.0 * 1.0
buffer[2691] = -1.0 * 0.35
buffer[2695] = 1.0
buffer[2696] = -1.0 * 0.35
buffer[2751] = -1.0 * 1.0
buffer[2752] = -1.0 * (((Double.cos(self.previousAngle[11]) * Double.sin(self.previousAngle[11])) / ((self.cartMass / self.poleMass + 1.0) * -1.3333333333333333 + Double.pow(Double.cos(self.previousAngle[11]), 2)) + ((-1.0 * self.previousAngle[11] + 1.0) * ((Double.pow(Double.sin(self.previousAngle[11]), 2) * -1.0 + Double.pow(Double.cos(self.previousAngle[11]), 2)) * ((self.cartMass / self.poleMass + 1.0) * -1.3333333333333333 + Double.pow(Double.cos(self.previousAngle[11]), 2)) + Double.pow(Double.cos(self.previousAngle[11]), 2) * 2.0 * Double.pow(Double.sin(self.previousAngle[11]), 2))) / Double.pow((self.cartMass / self.poleMass + 1.0) * -1.3333333333333333 + Double.pow(Double.cos(self.previousAngle[11]), 2), 2)) * 0.7 * self.gravity)
buffer[2753] = -1.0 * (((2.0 * self.previousAngularVelocity[11] * (-1.0 * self.previousAngularVelocity[11] + 1.0) + Double.pow(self.previousAngularVelocity[11], 2)) * self.poleLength * Double.sin(self.previousAngle[11]) * -0.9333333333333332) / ((self.cartMass / self.poleMass + 1.0) * -1.3333333333333333 + Double.pow(Double.cos(self.previousAngle[11]), 2)))
buffer[2754] = -1.0 * (-0.9333333333333332 / ((self.cartMass + self.poleMass) * -1.3333333333333333 + self.poleMass * Double.pow(Double.cos(self.previousAngle[11]), 2)))
buffer[2756] = 1.0
buffer[2812] = -1.0 * 1.0
buffer[2813] = -1.0 * 0.35
buffer[2817] = 1.0
buffer[2818] = -1.0 * 0.35
buffer[2872] = -1.0 * (((((1.3333333333333333 * self.poleLength * (self.cartMass + self.poleMass) + self.poleMass * Double.pow(Double.cos(self.previousAngle[11]), 2) * -1.0 * self.poleLength) * Double.cos(self.previousAngle[11]) + self.poleLength * self.poleMass * Double.pow(Double.sin(self.previousAngle[11]), 2) * -2.0 * Double.cos(self.previousAngle[11])) * (-1.0 * self.previousAngle[11] + 1.0)) / Double.pow(1.3333333333333333 * self.poleLength * (self.cartMass + self.poleMass) + self.poleMass * Double.pow(Double.cos(self.previousAngle[11]), 2) * -1.0 * self.poleLength, 2) + Double.sin(self.previousAngle[11]) / (1.3333333333333333 * self.poleLength * (self.cartMass + self.poleMass) + self.poleMass * Double.pow(Double.cos(self.previousAngle[11]), 2) * -1.0 * self.poleLength)) * (self.cartMass + self.poleMass) * 0.7 * self.gravity)
buffer[2873] = -1.0 * (((2.0 * self.previousAngularVelocity[11] * (-1.0 * self.previousAngularVelocity[11] + 1.0) + Double.pow(self.previousAngularVelocity[11], 2)) * Double.sin(self.previousAngle[11]) * -0.7) / ((self.cartMass / self.poleMass + 1.0) * 1.3333333333333333 + Double.cos(self.previousAngle[11]) * -1.0) + 1.0)
buffer[2874] = -1.0 * (-0.7 / (1.3333333333333333 * self.poleLength * (self.cartMass + self.poleMass) + -1.0 * self.poleLength * self.poleMass * Double.cos(self.previousAngle[11])))
buffer[2878] = 1.0
})
return Matrix(48, 60, flat)
}

//=================== Equality Vector Constraint ===================
var equalityConstraintVector: Vector? {
var flat: Vector = zeros(48)
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
})
return flat
}

//=================== Inequality Constraints Value ===================
@inlinable
func inequalityConstraintsValue(_ x: Vector) -> Double {
return Double.log((x[20] * -1.0 + -6.0) * -1.0) * -1.0 + Double.log((x[35] * -1.0 + -6.0) * -1.0) * -1.0 + Double.log((x[44] + -800.0) * -1.0) * -1.0 + Double.log((x[30] + -6.0) * -1.0) * -1.0 + Double.log((x[25] + -6.0) * -1.0) * -1.0 + Double.log((x[59] + -800.0) * -1.0) * -1.0 + Double.log((x[49] + -800.0) * -1.0) * -1.0 + Double.log((x[29] + -800.0) * -1.0) * -1.0 + Double.log((x[24] + -800.0) * -1.0) * -1.0 + Double.log((x[19] * -1.0 + -800.0) * -1.0) * -1.0 + Double.log((x[19] + -800.0) * -1.0) * -1.0 + Double.log((x[9] + -800.0) * -1.0) * -1.0 + Double.log((x[4] * -1.0 + -800.0) * -1.0) * -1.0 + Double.log((x[10] + -6.0) * -1.0) * -1.0 + Double.log((x[55] + -6.0) * -1.0) * -1.0 + Double.log((x[34] + -800.0) * -1.0) * -1.0 + Double.log((x[25] * -1.0 + -6.0) * -1.0) * -1.0 + Double.log((x[39] + -800.0) * -1.0) * -1.0 + Double.log((x[59] * -1.0 + -800.0) * -1.0) * -1.0 + Double.log((x[5] + -6.0) * -1.0) * -1.0 + Double.log((x[55] * -1.0 + -6.0) * -1.0) * -1.0 + Double.log((x[45] + -6.0) * -1.0) * -1.0 + Double.log((x[44] * -1.0 + -800.0) * -1.0) * -1.0 + Double.log((x[0] + -6.0) * -1.0) * -1.0 + Double.log((x[35] + -6.0) * -1.0) * -1.0 + Double.log((x[50] + -6.0) * -1.0) * -1.0 + Double.log((x[14] * -1.0 + -800.0) * -1.0) * -1.0 + Double.log((x[54] + -800.0) * -1.0) * -1.0 + Double.log((x[39] * -1.0 + -800.0) * -1.0) * -1.0 + Double.log((x[40] + -6.0) * -1.0) * -1.0 + Double.log((x[15] * -1.0 + -6.0) * -1.0) * -1.0 + Double.log((x[49] * -1.0 + -800.0) * -1.0) * -1.0 + Double.log((x[4] + -800.0) * -1.0) * -1.0 + Double.log((x[24] * -1.0 + -800.0) * -1.0) * -1.0 + Double.log((x[29] * -1.0 + -800.0) * -1.0) * -1.0 + Double.log((x[45] * -1.0 + -6.0) * -1.0) * -1.0 + Double.log((x[9] * -1.0 + -800.0) * -1.0) * -1.0 + Double.log((x[40] * -1.0 + -6.0) * -1.0) * -1.0 + Double.log((x[0] * -1.0 + -6.0) * -1.0) * -1.0 + Double.log((x[10] * -1.0 + -6.0) * -1.0) * -1.0 + Double.log((x[54] * -1.0 + -800.0) * -1.0) * -1.0 + Double.log((x[20] + -6.0) * -1.0) * -1.0 + Double.log((x[50] * -1.0 + -6.0) * -1.0) * -1.0 + Double.log((x[34] * -1.0 + -800.0) * -1.0) * -1.0 + Double.log((x[30] * -1.0 + -6.0) * -1.0) * -1.0 + Double.log((x[5] * -1.0 + -6.0) * -1.0) * -1.0 + Double.log((x[14] + -800.0) * -1.0) * -1.0 + Double.log((x[15] + -6.0) * -1.0) * -1.0
}

//=================== Inequality Constraints Gradient ===================
@inlinable
func inequalityConstraintsGradient(_ x: Vector) -> Vector {
var flat: Vector = zeros(60)
flat.withUnsafeMutableBufferPointer({ buffer in
buffer[0] = -1.0 / (x[0] + -6.0) + 1.0 / (x[0] * -1.0 + -6.0)
buffer[4] = 1.0 / (x[4] * -1.0 + -800.0) + -1.0 / (x[4] + -800.0)
buffer[5] = -1.0 / (x[5] + -6.0) + 1.0 / (x[5] * -1.0 + -6.0)
buffer[9] = -1.0 / (x[9] + -800.0) + 1.0 / (x[9] * -1.0 + -800.0)
buffer[10] = 1.0 / (x[10] * -1.0 + -6.0) + -1.0 / (x[10] + -6.0)
buffer[14] = -1.0 / (x[14] + -800.0) + 1.0 / (x[14] * -1.0 + -800.0)
buffer[15] = 1.0 / (x[15] * -1.0 + -6.0) + -1.0 / (x[15] + -6.0)
buffer[19] = 1.0 / (x[19] * -1.0 + -800.0) + -1.0 / (x[19] + -800.0)
buffer[20] = -1.0 / (x[20] + -6.0) + 1.0 / (x[20] * -1.0 + -6.0)
buffer[24] = -1.0 / (x[24] + -800.0) + 1.0 / (x[24] * -1.0 + -800.0)
buffer[25] = -1.0 / (x[25] + -6.0) + 1.0 / (x[25] * -1.0 + -6.0)
buffer[29] = -1.0 / (x[29] + -800.0) + 1.0 / (x[29] * -1.0 + -800.0)
buffer[30] = 1.0 / (x[30] * -1.0 + -6.0) + -1.0 / (x[30] + -6.0)
buffer[34] = -1.0 / (x[34] + -800.0) + 1.0 / (x[34] * -1.0 + -800.0)
buffer[35] = 1.0 / (x[35] * -1.0 + -6.0) + -1.0 / (x[35] + -6.0)
buffer[39] = 1.0 / (x[39] * -1.0 + -800.0) + -1.0 / (x[39] + -800.0)
buffer[40] = -1.0 / (x[40] + -6.0) + 1.0 / (x[40] * -1.0 + -6.0)
buffer[44] = -1.0 / (x[44] + -800.0) + 1.0 / (x[44] * -1.0 + -800.0)
buffer[45] = 1.0 / (x[45] * -1.0 + -6.0) + -1.0 / (x[45] + -6.0)
buffer[49] = 1.0 / (x[49] * -1.0 + -800.0) + -1.0 / (x[49] + -800.0)
buffer[50] = -1.0 / (x[50] + -6.0) + 1.0 / (x[50] * -1.0 + -6.0)
buffer[54] = 1.0 / (x[54] * -1.0 + -800.0) + -1.0 / (x[54] + -800.0)
buffer[55] = -1.0 / (x[55] + -6.0) + 1.0 / (x[55] * -1.0 + -6.0)
buffer[59] = 1.0 / (x[59] * -1.0 + -800.0) + -1.0 / (x[59] + -800.0)
})
return flat}

//=================== Inequality Constraints Hessians ===================
@inlinable
func inequalityConstraintsHessian(_ x: Vector) -> Matrix {
var flat: Vector = zeros(3600)
flat.withUnsafeMutableBufferPointer({ buffer in
buffer[0] = 1.0 / Double.pow(x[0] + -6.0, 2) + 1.0 / Double.pow(x[0] * -1.0 + -6.0, 2)
buffer[244] = 1.0 / Double.pow(x[4] + -800.0, 2) + 1.0 / Double.pow(x[4] * -1.0 + -800.0, 2)
buffer[305] = 1.0 / Double.pow(x[5] * -1.0 + -6.0, 2) + 1.0 / Double.pow(x[5] + -6.0, 2)
buffer[549] = 1.0 / Double.pow(x[9] + -800.0, 2) + 1.0 / Double.pow(x[9] * -1.0 + -800.0, 2)
buffer[610] = 1.0 / Double.pow(x[10] + -6.0, 2) + 1.0 / Double.pow(x[10] * -1.0 + -6.0, 2)
buffer[854] = 1.0 / Double.pow(x[14] + -800.0, 2) + 1.0 / Double.pow(x[14] * -1.0 + -800.0, 2)
buffer[915] = 1.0 / Double.pow(x[15] + -6.0, 2) + 1.0 / Double.pow(x[15] * -1.0 + -6.0, 2)
buffer[1159] = 1.0 / Double.pow(x[19] * -1.0 + -800.0, 2) + 1.0 / Double.pow(x[19] + -800.0, 2)
buffer[1220] = 1.0 / Double.pow(x[20] + -6.0, 2) + 1.0 / Double.pow(x[20] * -1.0 + -6.0, 2)
buffer[1464] = 1.0 / Double.pow(x[24] + -800.0, 2) + 1.0 / Double.pow(x[24] * -1.0 + -800.0, 2)
buffer[1525] = 1.0 / Double.pow(x[25] + -6.0, 2) + 1.0 / Double.pow(x[25] * -1.0 + -6.0, 2)
buffer[1769] = 1.0 / Double.pow(x[29] * -1.0 + -800.0, 2) + 1.0 / Double.pow(x[29] + -800.0, 2)
buffer[1830] = 1.0 / Double.pow(x[30] + -6.0, 2) + 1.0 / Double.pow(x[30] * -1.0 + -6.0, 2)
buffer[2074] = 1.0 / Double.pow(x[34] + -800.0, 2) + 1.0 / Double.pow(x[34] * -1.0 + -800.0, 2)
buffer[2135] = 1.0 / Double.pow(x[35] + -6.0, 2) + 1.0 / Double.pow(x[35] * -1.0 + -6.0, 2)
buffer[2379] = 1.0 / Double.pow(x[39] + -800.0, 2) + 1.0 / Double.pow(x[39] * -1.0 + -800.0, 2)
buffer[2440] = 1.0 / Double.pow(x[40] + -6.0, 2) + 1.0 / Double.pow(x[40] * -1.0 + -6.0, 2)
buffer[2684] = 1.0 / Double.pow(x[44] + -800.0, 2) + 1.0 / Double.pow(x[44] * -1.0 + -800.0, 2)
buffer[2745] = 1.0 / Double.pow(x[45] * -1.0 + -6.0, 2) + 1.0 / Double.pow(x[45] + -6.0, 2)
buffer[2989] = 1.0 / Double.pow(x[49] + -800.0, 2) + 1.0 / Double.pow(x[49] * -1.0 + -800.0, 2)
buffer[3050] = 1.0 / Double.pow(x[50] * -1.0 + -6.0, 2) + 1.0 / Double.pow(x[50] + -6.0, 2)
buffer[3294] = 1.0 / Double.pow(x[54] * -1.0 + -800.0, 2) + 1.0 / Double.pow(x[54] + -800.0, 2)
buffer[3355] = 1.0 / Double.pow(x[55] * -1.0 + -6.0, 2) + 1.0 / Double.pow(x[55] + -6.0, 2)
buffer[3599] = 1.0 / Double.pow(x[59] + -800.0, 2) + 1.0 / Double.pow(x[59] * -1.0 + -800.0, 2)
})
return Matrix(60, 60, flat)}

}
#endif