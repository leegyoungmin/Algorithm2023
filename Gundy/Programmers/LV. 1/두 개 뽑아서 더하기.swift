func solution(_ numbers:[Int]) -> [Int] {
    var result: Set<Int> = []
    for first in 0..<numbers.count - 1 {
        for second in first+1..<numbers.count {
            result.insert(numbers[first] + numbers[second])
        }
    }
    return result.sorted()
}
