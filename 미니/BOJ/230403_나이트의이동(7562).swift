let count = Int(readLine()!)!

let axises = [(1, 2), (1, -2), (2, 1), (2, -1), (-1, 2), (-1, -2), (-2, 1), (-2, -1)]

var current: (Int, Int) = (0, 0)
var target: (Int, Int) = (0, 0)
var visit = [[Bool]]()

for _ in 0..<count {
    let n = Int(readLine()!)!
    visit = Array(repeating: Array(repeating: false, count: n), count: n)
    
    let currentPosition = readLine()!.split(separator: " ").map { Int(String($0))! }
    current = (currentPosition[0], currentPosition[1])
    
    let targetPosition = readLine()!.split(separator: " ").map { Int(String($0))! }
    target = (targetPosition[0], targetPosition[1])
    
    print(bfs())
}

func bfs() -> Int {
    var queue: [(x: Int, y: Int, count: Int)] = [(current.0, current.1, 0)]
    var front: Int = 0
    visit[current.0][current.1] = true
    
    while front < queue.count {
        let current = queue[front]
        
        if current.x == target.0 && current.y == target.1 { return current.count }
        front += 1
        
        for i in 0..<axises.count {
            let axis = axises[i]
            let dx = current.x + axis.0
            let dy = current.y + axis.1
            
            if dx < 0 || dx > visit.count - 1 || dy < 0 || dy > visit.count - 1 { continue }
            if visit[dx][dy] { continue }
            
            visit[dx][dy] = true
            queue.append((dx, dy, current.count + 1))
        }
    }
    
    return 0
}
