func solution(_ numbers:[Int]) -> Int {
    var numbers: [Int] = numbers.sorted()
    return numbers.removeLast() * numbers.last!
}
