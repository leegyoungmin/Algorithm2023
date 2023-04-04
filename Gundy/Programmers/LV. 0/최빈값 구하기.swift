func solution(_ array:[Int]) -> Int {
    var count: [Int: Int] = [:]
    for number in array {
        count[number, default: 0] += 1
    }
    var result = count.sorted { $0.value < $1.value }
    let last = result.removeLast()
    if last.value == result.last?.value {
        return -1
    }
    return last.key
}
