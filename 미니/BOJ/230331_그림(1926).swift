let NM = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = NM[0], m = NM[1]
var values = Array(repeating: Array(repeating: 0, count: m), count: n)
var visit = Array(repeating: Array(repeating: false, count: m), count: n)
let axisX = [1, -1, 0, 0], axisY = [0, 0, 1, -1]

for row in 0..<n {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    values[row] = input
}

func bfs(_ x: Int, _ y: Int) -> Int {
    var queue: [(x: Int, y: Int)] = [(x, y)]
    var front: Int = 0
    let target = values[x][y]
    visit[x][y] = true

    while queue.count != front {
        let now = queue[front]

        front += 1

        for i in 0..<axisX.count {
            let dx = axisX[i], dy = axisY[i]
            let lx = now.x + dx, ly = now.y + dy

            if lx < 0 || lx > n - 1 || ly < 0 || ly > m - 1 { continue }
            if visit[lx][ly] { continue }
            if values[lx][ly] != target { continue }

            visit[lx][ly] = true
            queue.append((lx, ly))
        }
    }
    return queue.count
}

var count: Int = 0
var maxArea: Int = 0

for row in 0..<n {
    for col in 0..<m {
        if values[row][col] == 0 {
            visit[row][col] = true
            continue
        }

        if values[row][col] == 1 && visit[row][col] == false {
            count += 1
            let area = bfs(row, col)
            maxArea = max(maxArea, area)
        }
    }
}

print(count)
print(maxArea)
