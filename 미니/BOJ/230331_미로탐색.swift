let NM = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = NM[0], m = NM[1]

var map = Array(repeating: Array(repeating: 0, count: m), count: n)
var visit = Array(repeating: Array(repeating: false, count: m), count: n)
var axis = [(1, 0), (0, 1), (-1, 0), (0, -1)]

for row in 0..<n {
    let input = readLine()!

    var values = [Int]()
    for char in input {
        let value = Int(String(char))!
        values.append(value)
    }
    map[row] = values
}

func bfs(graph: [[Int]] = map) {
    var graph = graph
    var queue: [(x: Int, y: Int, front: Int)] = [(0, 0, 0)]
    var front: Int = 0
    
    while front < queue.count {
        let current = queue[front]
        
        front += 1
        
        for point in axis {
            let lx = (current.x + point.0), ly = (current.y + point.1)
            
            if lx < 0 || lx > n - 1 || ly < 0 || ly > m - 1 { continue }
            
            if graph[lx][ly] == 1 {
                graph[lx][ly] = 0
                queue.append((lx, ly, current.front + 1))
            }
        }
    }
    
    let result = queue.filter { $0.x == n - 1 && $0.y == m - 1 }.last!
    print(result.front + 1)
}

bfs()
