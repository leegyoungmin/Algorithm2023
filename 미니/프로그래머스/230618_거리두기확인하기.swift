import Foundation

let dx = [0, 0, 1, -1], dy = [1, -1, 0, 0]
var map = [[Character]](repeating: [], count: 5)

func bfs(row: Int, col: Int) -> Bool {
    var visit = Array(repeating: Array(repeating: false, count: 5), count: 5)
    visit[row][col] = true
    
    var q: [(x: Int, y: Int)] = [(row, col)]
    var front = 0
    var rear = 0
    
    for _ in 0..<2 {
        rear = q.count
        
        for _ in front..<rear {
            let now = q[front]
            
            front += 1
            
            for z in 0..<4 {
                let nx = now.x + dx[z]
                let ny = now.y + dy[z]
                
                if nx < 0 || nx >= 5 || ny < 0 || ny >= 5 { continue }
                if visit[nx][ny] { continue }
                if map[nx][ny] == "X" { continue }
                if map[nx][ny] == "P" { return false }
                
                visit[nx][ny] =  true
                q.append((nx, ny))
            }
        }
    }
    
    return true
}

func solve() -> Bool {
    var ret = true
    print(map)
    for i in 0..<map.count {
        for j in 0..<map[i].count {
            if map[i][j] == "P" {
                ret = bfs(row: i, col: j)
                
                if ret == false {
                    return ret
                }
            }
        }
    }
    
    return ret
}

func solution(_ places:[[String]]) -> [Int] {
    
    var answer = [Int]()
    
    for place in places {
        for i in 0..<place.count {
            map[i] = []
            
            for c in place[i] {
                map[i].append(c)
            }
        }
        
        if solve() {
            answer.append(1)
        } else {
            answer.append(0)
        }
    }
    
    return []
}
