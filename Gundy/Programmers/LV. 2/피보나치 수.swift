func solution(_ n:Int) -> Int {
    var numbers: [Int] = [1, 1]
    var index: Int = 0
    while numbers.count < n {
        let number: Int = (numbers[index] + numbers[index + 1]) % 1234567
        numbers.append(number)
        index += 1
    }
    return numbers.last!
}
