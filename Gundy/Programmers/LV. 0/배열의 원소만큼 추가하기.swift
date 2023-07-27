func solution(_ arr:[Int]) -> [Int] {
    var result = [Int]()
    arr.forEach { result += Array(repeating: $0, count: $0) }
    return result
}
