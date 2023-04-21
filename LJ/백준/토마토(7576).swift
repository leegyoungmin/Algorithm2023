//토마토(7576)
//https://www.acmicpc.net/problem/7576

let nm = readLine()!.split(separator: " ").map{ Int(String($0))! }
let n = nm[1], m = nm[0]
var box = Array(repeating: Array(repeating: 0, count: m), count: n)
var visit = Array(repeating: Array(repeating: false, count: m), count: n)
let axisX = [1, -1, 0, 0], axisY = [0, 0, 1, -1]
var queue: [(x: Int, y: Int)] = []
var days: Int = 0
var result: Int = 0

for i in 0..<n {
    box[i] = readLine()!.split(separator: " ").map { Int(String($0))! }
}

for row in 0..<n {
    for col in 0..<m {
        if box[row][col] == 1 {
            queue.append((row,col))
        }
    }
}

box = bfs()

for row in 0..<n {
    if box[row].contains(0) {
        result = -1
        break
    }
    result = days-1
}
print(result)

func bfs(_ box: [[Int]] = box) -> [[Int]] {
    var box = box
    var front: Int = 0
    var tail: Int = 0
    while front < queue.count {
        tail = queue.count-front
        
        for _ in 0..<tail {
            let now = queue[front]
            
            for i in 0..<axisX.count {
                let lx = now.x + axisX[i], ly = now.y + axisY[i]
                
                if lx < 0 || lx > n-1 || ly < 0 || ly > m-1 { continue }
                if box[lx][ly] == -1 || box[lx][ly] == 1 {
                    visit[lx][ly] = true
                    continue
                }
                if box[lx][ly] == 0 {
                    box[lx][ly] = 1
                    visit[lx][ly] = true
                    queue.append((lx,ly))
                }
            }
            front += 1
        }
        days += 1
    }
    return box
}

/*
 토마토가 익을 때 마다 days += 1
 큐에 추가되는 좌표의 개수만큼씩 검사하는 것을 고민하였다.
 tail변수 추가하여 해결
 
 */
