enum Direction {
    case down
    case right
    case up
}

func solution(_ n:Int) -> [Int] {
    var result = [[Int]]()
    var count = 0
    for row in 1...n {
        count += row
        let row = Array(repeating: 0, count: row)
        result.append(row)
    }
    var direction = Direction.down
    var index: (row: Int, column: Int) = (0, 0)
    var currentCount = 0
    while currentCount < count {
        currentCount += 1
        result[index.row][index.column] = currentCount
        switch direction {
        case .down:
            if index.row + 1 < n,
               result[index.row + 1][index.column] == 0 {
                index = (index.row + 1, index.column)
            } else {
                direction = .right
                index = (index.row, index.column + 1)
            }
        case .right:
            if index.column + 1 < result[index.row].count,
               result[index.row][index.column + 1] == 0 {
                index = (index.row, index.column + 1)
            } else {
                direction = .up
                index = (index.row - 1, index.column - 1)
            }
        case .up:
            if index.row - 1 >= 0,
               result[index.row - 1][index.column - 1] == 0 {
                index = (index.row - 1, index.column - 1)
            } else {
                direction = .down
                index = (index.row + 1, index.column)
            }
        }
    }
    return result.flatMap({ $0 })
}
