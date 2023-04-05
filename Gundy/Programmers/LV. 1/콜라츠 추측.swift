func solution(_ num:Int) -> Int {
    var number: Int = num
    var result: Int = 0
    while number != 1 {
        if number % 2 == 0 {
            number /= 2
        } else {
            number = (number * 3) + 1
        }
        result += 1
        guard result <= 500 else {
            return -1
        }
    }
    return result
}
