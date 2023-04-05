func solution(_ a:Int, _ b:Int) -> Int64 {
    let smallNumber: Int = a < b ? a : b
    let bigNumber: Int = a + b - smallNumber
    return Int64(stride(from: smallNumber, through: bigNumber, by: 1).reduce(0, +))
}
