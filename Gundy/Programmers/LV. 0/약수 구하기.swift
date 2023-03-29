func solution(_ n:Int) -> [Int] {
    var result: [Int] = []
    for number in 1...n {
        if n % number == 0 {
            result.append(number)
        }
    }
    return result
}
