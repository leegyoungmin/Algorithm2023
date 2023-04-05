func solution(_ n:Int64) -> Int64 {
    var result: Int64 = -1
    for root in 1...n {
        if root * root == n {
            result = (root + 1) * (root + 1)
            break
        }
    }
    return result
}
