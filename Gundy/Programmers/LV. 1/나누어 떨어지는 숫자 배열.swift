func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
    let numbers: [Int] = arr.filter({ $0 % divisor == 0 }).sorted()
    return numbers.isEmpty ? [-1] : numbers
}
