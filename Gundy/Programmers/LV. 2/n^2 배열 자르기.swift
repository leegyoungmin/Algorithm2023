func solution(_ n:Int, _ left:Int64, _ right:Int64) -> [Int] {
    var board = [Int]()
    for row in Int(left) / n...Int(right) / n {
        board += Array(repeating: row + 1, count: row) + stride(from: row + 1, through: n, by: 1)
    }
    return Array(board[Int(left) % n...(Int(left) % n) + Int(right - left)])
}
