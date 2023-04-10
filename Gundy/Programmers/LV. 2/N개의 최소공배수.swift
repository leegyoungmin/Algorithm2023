func solution(_ arr:[Int]) -> Int {
    let numbers: [Int] = arr.sorted()
    var result: Int = 0
    for multiple in 1... {
        let number: Int = numbers.last! * multiple
        guard numbers.filter({ number % $0 == 0 }).count == numbers.count else { continue }
        result = number
        break
    }
    return result
}
