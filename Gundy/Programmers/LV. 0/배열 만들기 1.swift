func solution(_ n:Int, _ k:Int) -> [Int] {
    var result = [Int]()
    for number in stride(from: k, through: n, by: k) {
        result.append(number)
    }
    return result
}
