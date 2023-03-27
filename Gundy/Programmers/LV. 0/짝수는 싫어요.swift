func solution(_ n:Int) -> [Int] {
    return stride(from: 1, through: n, by: 2).map({ $0 })
}
