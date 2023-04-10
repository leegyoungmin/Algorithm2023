func solution() {
    let numbers: Int = Int(readLine()!)!
    var link: [Int : Set<Int>] = [:]
    for number in 1...numbers {
        link[number] = []
    }
    let links: Int = Int(readLine()!)!
    for _ in 1...links {
        let computers: [Int] = readLine()!.split(separator: " ").compactMap({ Int($0) })
        link[computers[0]]?.insert(computers[1])
        link[computers[1]]?.insert(computers[0])
    }
    var visited: Set<Int> = []
    var needVisit: [Int] = [1]
    while needVisit.isEmpty == false {
        let computer: Int = needVisit.removeLast()
        guard visited.contains(computer) == false else { continue }
        visited.insert(computer)
        for number in link[computer]! {
            needVisit.append(number)
        }
    }
    print(visited.count - 1)
}

solution()
