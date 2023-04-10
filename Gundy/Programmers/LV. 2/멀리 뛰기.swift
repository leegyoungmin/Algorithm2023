func solution(_ n:Int) -> Int {
    var numbers: [Int] = [1, 2]
    while numbers.count < n {
        let first = numbers[numbers.count - 2]
        let second = numbers[numbers.count - 1]
        var number: Int = first + second
        if number >= 1234567 {
            number -= 1234567
        }
        numbers.append(number)
    }
    return numbers[n - 1]
}
