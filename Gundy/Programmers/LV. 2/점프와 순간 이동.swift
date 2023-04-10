func solution(_ n:Int) -> Int {
    var now: Int = n
    var result: Int = 0
    while now != 0 {
        while now % 2 == 0 {
            now /= 2
        }
        result += 1
        now -= 1
    }
    return result
}
