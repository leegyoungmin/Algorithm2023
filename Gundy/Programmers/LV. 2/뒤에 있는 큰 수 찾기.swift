func solution(_ numbers:[Int]) -> [Int] {
    var stack: [(value: Int, index: Int)] = []
    var result: [Int] = Array(repeating: -1, count: numbers.count)
    for (number, index) in zip(numbers, 0..<numbers.count) {
        while stack.isEmpty == false,
              stack.last!.value < number {
            let small = stack.removeLast()
            result[small.index] = number
        }
        stack.append((number, index))
    }
    return result
}
