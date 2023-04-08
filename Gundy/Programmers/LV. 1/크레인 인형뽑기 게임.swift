func solution(_ board:[[Int]], _ moves:[Int]) -> Int {
    var stack: [Int] = []
    var basket: [[Int]] = Array(repeating: [], count: board.count)
    for yIndex in stride(from: board.count - 1, through: 0, by: -1) {
        let row: [Int] = board[yIndex]
        for xIndex in 0..<row.count {
            let item: Int = row[xIndex]
            if item != 0 {
                basket[xIndex].append(item)
            }
        }
    }
    var result: Int = 0
    for move in moves {
        let index: Int = move - 1
        if let last = basket[index].popLast() {
            if last == stack.last {
                stack.removeLast()
                result += 2
            } else {
                stack.append(last)
            }
        }
    }
    return result
}
