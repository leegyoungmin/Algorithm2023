func solution(_ arr:[Int], _ n:Int) -> [Int] {
    var numbers = arr
    for index in stride(from: numbers.count % 2 == 1 ? 0 : 1, to: numbers.count, by: 2) {
        numbers[index] += n
    }
    return numbers
}
