func solution(_ numbers:[Int], _ n:Int) -> Int {
    var result = 0
    var index = 0
    while result <= n {
        result += numbers[index]
        index += 1
    }
    return result
}
