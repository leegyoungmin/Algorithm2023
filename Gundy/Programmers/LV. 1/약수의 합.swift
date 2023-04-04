func solution(_ n:Int) -> Int {
    guard n > 0 else { return 0 }
    var divisors: [Int] = [1]
    var divisor: Int = 2
    while divisor <= n {
        if n % divisor == 0 {
            divisors.append(divisor)
        }
        divisor += 1
    }
    return divisors.reduce(0, +)
}
