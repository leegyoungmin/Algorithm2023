func solution(_ k:Int, _ m:Int, _ score:[Int]) -> Int {
    var result: [[Int]] = []
    var scores: [Int] = score.sorted()
    while scores.isEmpty == false {
        var box: [Int] = []
        for _ in 1...m {
            box.append(scores.removeLast())
            if scores.isEmpty {
                break
            }
        }
        if box.count == m {
            result.append(box)
        }
    }
    return result.map({ $0.last! * m }).reduce(0, +)
}
