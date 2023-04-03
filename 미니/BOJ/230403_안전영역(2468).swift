let N = Int(readLine()!)!

let xAxis = [1, -1, 0, 0], yAxis = [0, 0, 1, -1]

var visit = Array(repeating: Array(repeating: false, count: N), count: N)
var map = Array(repeating: Array(repeating: 0, count: N), count: N)
var maxHeight = N

for index in 0..<N {
    let values = readLine()!.split(separator: " ").map { Int(String($0))! }
    maxHeight = values.max()!
    map[index] = values
}

func bfs(_ x: Int, _ y: Int, maxHeight: Int) {
    var queue: [(x: Int, y: Int)] = [(x, y)]
    var front: Int = 0
    
    while front < queue.count {
        let current = queue[front]
        
        for idx in 0..<xAxis.count {
            let dx = xAxis[idx], dy = yAxis[idx]
            let lx = current.x + dx
            let ly = current.y + dy
            
            if lx < 0 || lx > N - 1 || ly < 0 || ly > N - 1 { continue }
            if visit[lx][ly] { continue }
            if map[lx][ly] < maxHeight { continue }
            
            visit[lx][ly] = true
            queue.append((lx, ly))
        }
        front += 1
    }
}

var result: Int = 0
for height in 0..<(maxHeight + 1) {
    var count: Int = 0
    for row in 0..<N {
        for col in 0..<N {
            if map[row][col] < height { continue }
            if visit[row][col] { continue }
            
            count += 1
            bfs(row, col, maxHeight: height)
        }
    }
    
    result = max(result, count)
    visit = Array(repeating: Array(repeating: false, count: N), count: N)
}

print(result)
