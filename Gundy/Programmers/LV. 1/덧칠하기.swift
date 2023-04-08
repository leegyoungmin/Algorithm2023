func solution(_ n:Int, _ m:Int, _ section:[Int]) -> Int {
    var current: Int = 0
    var result: Int = 0
    for number in section {
        if current >= number {
            continue
        }
        result += 1
        current = number + m - 1
    }
    return result
}
