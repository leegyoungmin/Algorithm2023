func solution(_ score:[[Int]]) -> [Int] {
    let score: [Double] = score.map({ Double($0[0] + $0[1]) / 2 })
    var sortedList: [Double] = score.sorted()
    var result: [Double: Int] = [:]
    while sortedList.isEmpty == false {
        let point: Double = sortedList.removeLast()
        if result[point] == nil {
            result[point] = score.count - sortedList.count
        }
    }
    return score.compactMap({ result[$0] })
}
