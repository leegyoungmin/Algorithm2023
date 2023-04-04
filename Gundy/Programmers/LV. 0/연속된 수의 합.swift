func solution(_ num:Int, _ total:Int) -> [Int] {
    if total % num == 0 {
        return stride(from: (total / num) - (num / 2), through: (total / num) + (num / 2), by: 1).map({ $0 })
    }
    return stride(from: (total / num) - (num / 2) + 1, through: (total / num) + (num / 2), by: 1).map({ $0 })
}
