func solution(_ n:Int) -> [Int] {
    var number: Int = n
    var divisor: Int = 2
    var result: Set<Int> = []
    while divisor <= number {
        guard number % divisor == 0,
              number / divisor > 0 else {
            divisor += 1
            continue
        }
        result.insert(divisor)
        number /= divisor
    }
    return result.sorted()
}
