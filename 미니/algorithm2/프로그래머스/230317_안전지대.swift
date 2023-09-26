import Foundation

func solution(_ board:[[Int]]) -> Int {
    var result = Array(repeating: Array(repeating: false, count: board.count), count: board.count)
    
    let dx = [1, -1, 0, 0, 1, 1, -1, -1]
    let dy = [0, 0, 1, -1, 1, -1, 1, -1]
    
    for row in 0..<board.count {
        for col in 0..<board.count {
            let value = board[row][col]
            
            if value == 1 {
                result[row][col] = true
                for idx in 0..<dx.count {
                    let x = dx[idx], y = dy[idx]
                    let dRow = row + x, dCol = col + y
                    
                    if dRow < 0 || dRow >= board.count || dCol >= board.count || dCol < 0 { continue }
                    
                    result[dRow][dCol] = true
                }
            }
        }
    }
    
    var count: Int = 0
    for row in result {
        for i in row {
            if i == false {
                count += 1
            }
        }
    }
    
    return count
}

let board = [[1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1]]
print(solution(board))
