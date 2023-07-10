func solution(_ n:Int, _ computers:[[Int]]) -> Int {
    var links = Array(repeating: Set<Int>(), count: n)
    for index in 0..<n {
        let computer = computers[index]
        for other in 0..<n {
            if computer[other] == 1 {
                links[index].insert(other)
                links[other].insert(index)
            }
        }
    }
    var visited = Array(repeating: false, count: n)
    var result = 0
    var needVisit = Set<Int>()
    for index in 0..<n {
        guard visited[index] == false else {
            continue
        }
        result += 1
        visited[index] = true
        needVisit = links[index]
        while needVisit.isEmpty == false {
            let computer = needVisit.removeFirst()
            guard visited[computer] == false else {
                continue
            }
            visited[computer] = true
            needVisit = needVisit.union(links[computer])
        }
    }
    return result
}
