let N = Int(readLine()!)!, m = Int(readLine()!)!
var friends = Array(repeating: [Int](), count: N + 1)

for _ in 0..<m {
    let relation = readLine()!.split(separator: " ").map { Int($0)! }
    let i = relation[0], j = relation[1]
    
    friends[i].append(j)
    friends[j].append(i)
}

var visit = Array(repeating: false, count: N + 1)

func bfs(start: Int) -> Int {
    var front = 0
    var queue: [(Int, Int)] = [(start, 0)]
    visit[0] = true
    
    while queue.count != front {
        let friend = queue[front]
        
        front += 1
        
        if visit[friend.0] || friend.1 > 2 { continue }
        
        visit[friend.0] = true
        
        for relation in friends[friend.0] {
            queue.append((relation, friend.1 + 1))
        }
    }
    
    return visit.filter { $0 }.count - 2
}

print(bfs(start: 1))
