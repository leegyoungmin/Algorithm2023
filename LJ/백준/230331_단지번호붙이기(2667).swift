//단지번호붙이기(2667)
//https://www.acmicpc.net/problem/2667

let N = Int(readLine()!)!
var values = Array(repeating: Array(repeating: 0, count: N), count: N)
var visit = Array(repeating: Array(repeating: false, count: N), count: N)
let axisX = [1, -1, 0, 0], axisY = [0, 0, 1, -1]

for row in 0..<N {
    let input = readLine()!.map { Int(String($0))! }
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
            
            if lx < 0 || lx > N-1 || ly < 0 || ly > N-1 { continue }
            if visit[lx][ly] { continue }
            if values[lx][ly] != target { continue }
            visit[lx][ly] = true
            queue.append((lx, ly))
        }
    }
    return queue.count
}

var houseCount: Int = 0 //단지 내 집의 수
var result = [Int]() //단지 집의 수의 모음


for row in 0..<N {
    for col in 0..<N {
        if values[row][col] == 0 {
            visit[row][col] = true
            continue
        }
        if values[row][col] == 1 && visit[row][col] == false {
            let houseCount = bfs(row, col)
            result.append(houseCount)
        }
    }
}

print(result.count)
result = result.sorted(by: <)
result.forEach { print($0) }

/*
 문제에 나온 그림처럼 영역별로 단지 번호를 부여한다고 생각해서 처음에 좀 헷갈렸다.
 출력값에 필요한 것을 기준으로 생각하여 해결했다.
 */
