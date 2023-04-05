func solution(_ n:Int) -> Int {
    var result: Int = 0
    for divisor in 2..<n {
        if n % divisor == 1 {
            result = divisor
            break
        }
    }
    return result
}
