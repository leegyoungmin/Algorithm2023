func solution(_ emergency:[Int]) -> [Int] {
    var sortedList: [Int] = emergency.sorted(by: >)
    var result: [Int] = Array(repeating: 0, count: emergency.count)
    while sortedList.isEmpty == false {
        let count: Int = sortedList.count
        let number: Int = sortedList.removeLast()
        let index: Int = emergency.firstIndex(of: number)!
        result[index] = count
    }
    return result
}
