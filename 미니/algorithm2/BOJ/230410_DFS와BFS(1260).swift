let NMV = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = NMV[0], m = NMV[1], v = NMV[2]

var map = Array(repeating: [Int](), count: n + 1)
var visit = Array(repeating: false, count: n + 1)

for _ in 0..<m {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    let row = input[0], col = input[1]
    
    map[row].append(col)
    map[col].append(row)
    map[row].sort()
    map[col].sort()
}

func dfs(start: Int) {
    if visit[start] { return }
    
    visit[start] = true
    
    print(start, terminator: " ")
    
    for value in map[start] {
        dfs(start: value)
    }
}

func bfs(start: Int) {
    var queue = [start]
    var front = 0
    visit[start] = true
    
    while queue.count != front {
        let current = queue[front]
        print(current, terminator: " ")
        
        front += 1
        
        for value in map[current] {
            if visit[value] { continue }
            
            visit[value] = true
            queue.append(value)
        }
    }
}

func main() {
    dfs(start: v)
    
    visit = Array(repeating: false, count: n + 1)
    print()
    
    bfs(start: v)
}

main()
