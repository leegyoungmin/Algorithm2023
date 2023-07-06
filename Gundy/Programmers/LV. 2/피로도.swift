func solution(_ k:Int, _ dungeons:[[Int]]) -> Int {
    var result = 0
    func recursion(current fatigue: Int, visited indices: [Int]) {
        for index in 0..<dungeons.count {
            if result < indices.count {
                result = indices.count
            }
            guard indices.contains(index) == false else {
                continue
            }
            if dungeons[index][0] <= fatigue {
                recursion(current: fatigue - dungeons[index][1], visited: indices + [index])
            }
        }
    }
    recursion(current: k, visited: [])
    return result
}
