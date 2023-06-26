func solution(_ n:Int) -> Int {
    var numbers: [Int] = [1, 2]
    while numbers.count < n {
        let first = numbers[numbers.count - 2]
        let second = numbers[numbers.count - 1]
        numbers.append((first + second) % 1234567)
    }
    return numbers[n - 1]
}
