func solution(_ n:Int, _ left:Int64, _ right:Int64) -> [Int] {
    let left: Int = Int(left)
    let right: Int = Int(right)
    var result: [Int] = []
    let startRow: Int = left / n
    let startIndex: Int = left % n
    if startIndex >= startRow {
        result += stride(from: startIndex + 1, through: n, by: 1).map({ $0 })
    } else {
        result +=  Array(repeating: startRow + 1, count: startRow - startIndex) + stride(from: startRow + 1, through: n, by: 1).map({ $0 })
    }
    let endRow: Int = right / n
    for row in stride(from: startRow + 2, through: endRow + 1, by: 1) {
        result += Array(repeating: row, count: row-1) + stride(from: row, through: n, by: 1).map({ $0 })
    }
    return Array(result[0...right - left])
}
