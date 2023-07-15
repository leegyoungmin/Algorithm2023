
func solution(_ n:Int, _ results:[[Int]]) -> Int {
    var log = [Int: [Int]]()
    for result in results {
        let winner = result[0]
        let loser = result[1]
        log[winner, default: []].append(loser)
    }
    var record = Array(repeating: [0, 0], count: n + 1)
    for winner in 1...n {
        guard var needVisit = log[winner] else {
            continue
        }
        var visited = Array(repeating: false, count: n + 1)
        visited[winner] = true
        while needVisit.isEmpty == false {
            let loser = needVisit.removeLast()
            guard visited[loser] == false else {
                continue
            }
            visited[loser] = true
            record[loser][1] += 1
            record[winner][0] += 1
            guard let losers = log[loser] else {
                continue
            }
            needVisit += losers
        }
    }
    let result: Int
    result = record
        .filter { $0.reduce(0, +) == n - 1 }
        .count
    return result
}
