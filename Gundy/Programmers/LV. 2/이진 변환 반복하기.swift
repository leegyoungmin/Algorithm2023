func solution(_ s:String) -> [Int] {
    var times: Int = 0
    var zeroCount: Int = 0
    var number: String = s
    while number != "1" {
        let (converted, zero) = toBinary(from: number)
        number = converted
        times += 1
        zeroCount += zero
    }
    return [times, zeroCount]
}

func toBinary(from text: String) -> (String, Int) {
    var result: String = ""
    var count: Int = 0
    for number in text {
        if number == "1" {
            result += "1"
        } else {
            count += 1
        }
    }
    return (String(result.count, radix: 2), count)
}
