func solution(_ n:Int) -> Int {
    return stride(from: 0, through: n, by: 2).reduce(0, +)
}
