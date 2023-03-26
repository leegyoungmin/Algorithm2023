extension Array {
    subscript(safe index: Int) -> Element? {
        guard self.count > index && index >= 0 else {
            return nil
        }
        return self[index]
    }
}

func solution(_ board:[[Int]]) -> Int {
    var result: [[Int]] = board
    let length: Int = board.count
    for x in 0..<length {
        for y in 0..<length {
            if board[x][y] == 1 {
                if var numbers = result[safe: x-1],
                   let _ = numbers[safe: y-1] {
                    numbers[y-1] = 2
                    result[x-1] = numbers
                }
                if var numbers = result[safe: x-1] {
                    numbers[y] = 2
                    result[x-1] = numbers
                }
                if var numbers = result[safe: x-1],
                   let _ = numbers[safe: y+1] {
                    numbers[y+1] = 2
                    result[x-1] = numbers
                }
                if let _ = result[x][safe: y-1] {
                    result[x][y-1] = 2
                }
                if let _ = result[x][safe: y+1] {
                    result[x][y+1] = 2
                }
                if var numbers = result[safe: x+1],
                   let _ = numbers[safe: y-1] {
                    numbers[y-1] = 2
                    result[x+1] = numbers
                }
                if var numbers = result[safe: x+1] {
                    numbers[y] = 2
                    result[x+1] = numbers
                }
                if var numbers = result[safe: x+1],
                   let _ = numbers[safe: y+1] {
                    numbers[y+1] = 2
                    result[x+1] = numbers
                }
            }
        }
    }
    return result.flatMap({ $0 }).filter({ $0 == 0 }).count
}
