let length: Int = Int(readLine()!)!
var board: [[String]] = []
for _ in 1...length {
    board.append(readLine()!.split(separator: " ").map({ String($0) }))
}
let result = recursion(board.count / 3, originPoint: (0, 0))
print(result.negative)
print(result.zero)
print(result.positive)
func recursion(_ term: Int, originPoint: (row: Int, column: Int)) -> (negative: Int, zero: Int, positive: Int) {
    if term == 0 {
        switch board[originPoint.row][originPoint.column] {
        case "-1":
            return (1, 0, 0)
        case "0":
            return (0, 1, 0)
        default:
            return (0, 0, 1)
        }
    }
    let origin = recursion(term / 3, originPoint: originPoint)
    var isEqual: Bool = origin.negative + origin.zero + origin.positive == 1 ? true : false
    var negative: Int = origin.negative
    var zero: Int = origin.zero
    var positive: Int = origin.positive
    for (row, column) in zip([0, 0, term, term, term, term * 2, term * 2, term * 2],
                             [term, term * 2, 0, term, term * 2, 0, term, term * 2]) {
        let temporary = recursion(term / 3, originPoint: (originPoint.row + row, originPoint.column + column))
        if isEqual,
           origin != temporary {
            isEqual = false
        }
        negative += temporary.negative
        zero += temporary.zero
        positive += temporary.positive
    }
    return isEqual ? origin : (negative, zero, positive)
}
