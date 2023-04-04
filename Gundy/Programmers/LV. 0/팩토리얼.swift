func solution(_ n:Int) -> Int {
    var number: Int = n
    var result: Int = 1
    while number != 0 {
        result += 1
        number = number / result
    }
    return result - 1
}
