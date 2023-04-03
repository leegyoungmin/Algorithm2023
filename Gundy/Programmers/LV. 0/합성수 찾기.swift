func solution(_ n:Int) -> Int {
    var result: Int = 0
    for number in 1...n {
        var count: Int = 0
        for mesure in 1...number {
            if number % mesure == 0 {
                count += 1
            }
            if count == 3 {
                break
            }
        }
        if count == 3 {
            result += 1
        }
    }
    return result
}
