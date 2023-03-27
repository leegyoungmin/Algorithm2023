func solution(_ n:Int) -> Int {
    var result: Int = 0
    for number in 1...n {
        if n % number == 0 {
            result += 1
        }
    }
    return result
}
