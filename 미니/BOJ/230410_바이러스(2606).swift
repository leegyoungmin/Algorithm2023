let N = Int(readLine()!)!
let M = Int(readLine()!)!

var map = Array(repeating: [Int](), count: N + 1)
var visit = Array(repeating: false, count: N + 1)

for _ in 0..<M {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    let row = input[0], col = input[1]
    
    map[row].append(col)
    map[col].append(row)
    map[row].sort()
    map[col].sort()
}

func dfs(_ index: Int = 1) {

    if visit[index] { return }

    visit[index] = true

    for computer in map[index] {
        dfs(computer)
    }
}

func bfs(_ index: Int = 1) {
    var queue = [index]
    
    while queue.isEmpty == false {
        let current = queue.removeLast()
        
        for computer in map[current] {
            if visit[computer] { continue }
            
            visit[computer] = true
            queue.append(computer)
        }
    }
}

dfs()
print(visit.filter { $0 }.count - 1)
