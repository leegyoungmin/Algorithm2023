let NM = readLine()!.split(separator: " ").map { Int(String($0))! }
let width = NM[0], height = NM[1]
let dx = [1, -1, 0, 0], dy = [0, 0, 1, -1]

var map = Array(repeating: Array(repeating: "", count: width), count: height)
var visit = Array(repeating: Array(repeating: false, count: width), count: height)
var wCount: Int = 0, bCount: Int = 0

for idx in 0..<height {
    let values = readLine()!.map { String($0) }
    map[idx] = values
}

func bfs(_ x: Int, _ y: Int) {
    var queue: [(x: Int, y: Int)] = [(x, y)]
    var front: Int = 0
    let target = map[x][y]
    
    visit[x][y] = true
    
    while front != queue.count {
        let current = queue[front]
        
        front += 1
        
        for i in 0..<dx.count {
            let dx = dx[i], dy = dy[i]
            
            let lx = (current.x + dx)
            let ly = (current.y + dy)
            
            if lx < 0 || lx > (height - 1) || ly < 0 || ly > (width - 1) { continue }
            if visit[lx][ly] { continue }
            if map[lx][ly] != target { continue }
            
            visit[lx][ly] = true
            
            queue.append((lx, ly))
        }
    }
    
    if target == "W" {
        wCount += (queue.count * queue.count)
    } else {
        bCount += (queue.count * queue.count)
    }
}

for row in 0..<height {
    for col in 0..<width {
        if visit[row][col] { continue }
        
        bfs(row, col)
    }
}
print("\(wCount) \(bCount)")
