func solution(_ numbers:[Int], _ num1:Int, _ num2:Int) -> [Int] {
    var result: [Int] = []
    for index in num1...num2 {
        result.append(numbers[index])
    }
    return result
}
