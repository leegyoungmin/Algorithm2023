//안전지대
//https://school.programmers.co.kr/learn/courses/30/lessons/120866

func solution(_ board:[[Int]]) -> Int {
    let n = board[0].count
    var map = board
    var bomb = [(Int, Int)]()

    for row in 0..<n {
        for col in 0..<n {
            if map[row][col] == 1 {
                map[row][col] = 2
                bomb.append((row,col))
            }
        }
    }

    func bfs(_ r: Int, _ c: Int) {
        let axisX = [1, -1, 0, 0, -1, -1, 1, 1], axisY = [0, 0, 1, -1, -1, 1, -1, 1]
        let now = (r,c)

        for i in 0..<axisX.count {
            let lx = now.0 + axisX[i], ly = now.1 + axisY[i]

            if lx < 0 || lx > n-1 || ly < 0 || ly > n-1 { continue }
            map[lx][ly] = -1
        }
    }

    for i in 0..<bomb.count {
        bfs(bomb[i].0, bomb[i].1)
    }
//     print(map)
  
    var count = 0
    for row in 0..<n {
        for col in 0..<n {
            if map[row][col] == 0 {
                count += 1
            }
        }
    }
    return count
}
