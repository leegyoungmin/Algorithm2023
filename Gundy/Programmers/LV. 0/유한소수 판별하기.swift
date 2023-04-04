func solution(_ a:Int, _ b:Int) -> Int {
    var numerator: Int = a
    var denominator: Int = b
    var divisor: Int = 2
    while divisor <= numerator,
          divisor <= denominator {
        guard numerator % divisor == 0,
              denominator % divisor == 0  else {
            divisor += 1
            continue
              }
        numerator /= divisor
        denominator /= divisor
    }
    let divisors: [Int] = [2, 5]
    for divisor in divisors {
        while denominator % divisor == 0 {
            denominator /= divisor
        }
    }
    
    return denominator == 1 ? 1 : 2
}
