func solution(_ numbers:[Int]) -> Int {
    let numbers: [Int] = numbers.sorted()
    let leftResult: Int = numbers[0] * numbers[1]
    let rightResult: Int = numbers[numbers.count - 2] * numbers.last!
    return max(leftResult, rightResult)
}
