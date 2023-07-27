func solution(_ n:Int) -> Int {
    return n % 2 == 1 ? stride(from: 1, through: n, by: 2).reduce(0, +) : stride(from: 2, through: n, by: 2).map({ $0 * $0 }).reduce(0, +)
}
