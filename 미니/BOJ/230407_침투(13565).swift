let MN = readLine()!.split(separator: " ").map { Int(String($0))! }
let m = MN[0], n = MN[1]
var map = Array(repeating: [Int](), count: m)
var visit = Array(repeating: Array(repeating: false, count: n), count: m)

let dx = [1, -1, 0, 0], dy = [0, 0, 1, -1]

for idx in 0..<m {
    let values = readLine()!.map { Int(String($0))! }
    map[idx] = values
}

func bfs(_ x: Int, _ y: Int) -> Bool {
    var queue: [(x: Int, y: Int)] = [(x, y)]
    var front: Int = 0
    var isPass: Bool = false
    
    while front < queue.count {
        let current = queue[front]
        front += 1
        
        if current.x == (m - 1) {
            visit[current.x][current.y] = true
            isPass = true
            break
        }
        
        for idx in 0..<dx.count {
            let dx = dx[idx], dy = dy[idx]
            let lx = (current.x + dx), ly = (current.y + dy)
            
            if lx < 0 || ly < 0 || lx > (m - 1) || ly > (n - 1) { continue }
            if visit[lx][ly] { continue }
            if map[lx][ly] == 1 { continue }
            
            visit[lx][ly] = true
            
            queue.append((lx, ly))
        }
    }
    return isPass
}

var result: Bool = false

for col in 0..<n {
    if result { break }
    
    if map[0][col] == 1 { continue }
    result = bfs(0, col)
}

print(result ? "YES" : "NO")
