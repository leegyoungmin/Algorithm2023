//전쟁 - 전투(1303)
//https://www.acmicpc.net/problem/1303

let NM = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = NM[1], m = NM[0]

var man = Array(repeating: Array(repeating: "", count: m), count: n)
var visit = Array(repeating: Array(repeating: false, count: m), count: n)
let axisX = [1, -1, 0 ,0], axisY = [0, 0, 1, -1]

for row in 0..<n {
    let input = readLine()!
    var values = [String]()
    
    for char in input {
        let value = String(char)
        values.append(value)
    }
    man[row] = values
}
checkTeam("W")
checkTeam("B")

func checkTeam(_ team: String) {
    var array = [Int]()
    var sum = 0
    for i in 0..<n {
        for j in 0..<m {
            if visit[i][j] == false && man[i][j] == team {
                array.append(bfs(i, j, team))
            }
        }
    }
    
    array.forEach {
        sum += $0
    }
    print(sum)
}

func bfs(_ x: Int, _ y: Int, _ team: String) -> Int {
    var queue: [(x: Int, y: Int)] = [(x,y)]
    var front: Int = 0
    
    while front < queue.count {
        let now = queue[front]
        front += 1
        visit[now.x][now.y] = true
        
        for i in 0..<axisX.count {
            let lx = now.x + axisX[i], ly = now.y + axisY[i]
            
            if lx < 0 || lx > n-1 || ly < 0 || ly > m-1 { continue }
            if visit[lx][ly] { continue }
            if man[lx][ly] == team && visit[lx][ly] == false {
                visit[lx][ly] = true
                queue.append((lx,ly))
            }
        }
    }
    return queue.count * queue.count
}
