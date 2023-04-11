func solution(_ numbers:[Int64]) -> [Int64] {
    var result: [Int64] = []
    for number in numbers {
        if number % 2 == 0 {
            result.append(number + 1)
        } else {
            result.append(makeNext(for: number))
        }
    }
    return result
}

func makeNext(for number: Int64) -> Int64 {
    var binary: String = String(number, radix: 2)
    var value: Int = 1
    while binary.last == "1" {
        value *= 2
        binary.removeLast()
    }
    return number + Int64(value / 2)
}
