func solution(_ numer1:Int, _ denom1:Int, _ numer2:Int, _ denom2:Int) -> [Int] {
    var numer: Int = (numer1 * denom2) + (numer2 * denom1)
    var denom: Int = denom1 * denom2
    var divisor: Int = 2
    while divisor <= numer,
          divisor <= denom {
        guard numer % divisor == 0,
              denom % divisor == 0 else {
            divisor += 1
            continue
        }
        numer /= divisor
        denom /= divisor
    }
    return [numer, denom]
}
