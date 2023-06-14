func solution(_ board:[[Int]]) -> Int {
    var result = Array(repeating: Array(repeating: true,
                                        count: board[0].count),
                       count: board.count)
    for row in 0..<board.count {
        for column in 0..<board[row].count {
            guard board[row][column] == 1 else {
                continue
            }
            for (x, y) in zip([-1, 0, 1, -1, 0, 1, -1, 0, 1],
                              [-1, -1, -1, 0, 0, 0, 1, 1, 1]) {
                guard row + x >= 0 && row + x < board.count,
                      column + y >= 0 && column + y < board[row + x].count else {
                    continue
                }
                result[row + x][column + y] = false
            }
        }
    }
    return result.flatMap { $0 }.filter { $0 }.count
}
