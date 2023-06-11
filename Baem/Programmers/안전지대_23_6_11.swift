func solution(_ board:[[Int]]) -> Int {
    var map = Array(repeating: Array(repeating: 0, count: board.count + 2), count: board.count + 2)
    
    if board.count == 1 {
        if board[0][0] == 1 {
            return 0
        } else {
            return 1
        }
    }
    
    for j in 1...board.count {
        for i in 1...board.count {
            map[j][i] = board[j-1][i-1]
        }
    }
    
    var resultMap = map
    
    for j in 1...board.count {
        for i in 1...board.count {
            if map[j][i] == 1 {
                resultMap[j-1][i-1] = 1
                resultMap[j-1][i] = 1
                resultMap[j-1][i+1] = 1
                resultMap[j][i-1] = 1
                resultMap[j][i] = 1
                resultMap[j][i+1] = 1
                resultMap[j+1][i-1] = 1
                resultMap[j+1][i] = 1
                resultMap[j+1][i+1] = 1
            }
        }
    }
    
    var count = 0
    
    for j in 1...board.count {
        for i in 1...board.count {
            if resultMap[j][i] == 0 {
                count += 1
            }
        }
    }
    
    return count
}
