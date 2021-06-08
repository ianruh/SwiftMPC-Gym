
extension Array where Element == Double {
    public mutating func setAll(to value: Double) {
        for i in 0..<self.count {
            self[i] = value
        }
    }
}