func solution(_ left:Int, _ right:Int) -> Int {
    return stride(from: left, through: right, by: 1).filter({ countDivisors(for: $0) % 2 == 0 }).reduce(0, +) - stride(from: left, through: right, by: 1).filter({ countDivisors(for: $0) % 2 == 1 }).reduce(0, +)
}

func countDivisors(for number: Int) -> Int {
    var result: Int = 0
    for divisor in 1...number {
        if number % divisor == 0 {
            result += 1
        }
    }
    return result
}
