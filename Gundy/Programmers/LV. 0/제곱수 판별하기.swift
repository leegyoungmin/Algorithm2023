func solution(_ n:Int) -> Int {
    for number in 1...1000 {
        if number * number == n {
            return 1
        }
        if number > n {
            return 2
        }
    }
    return 2
}
