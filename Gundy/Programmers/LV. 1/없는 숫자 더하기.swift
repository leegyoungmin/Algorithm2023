func solution(_ numbers:[Int]) -> Int {
    var result: Int = stride(from: 1, through: 9, by: 1).reduce(0, +)
    numbers.forEach({ result -= $0 })
    return result
}
