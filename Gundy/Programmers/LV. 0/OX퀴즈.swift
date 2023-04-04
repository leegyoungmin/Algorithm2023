func solution(_ quiz:[String]) -> [String] {
    return quiz.map({ validate($0) })
}

func validate(_ expression: String) -> String {
    var inputs: [String] = expression.split(separator: " ").map({ String($0) })
    let result: Int = operate(Int(inputs[0])!, and: Int(inputs[2])!, with: inputs[1])
    return result == Int(inputs[4]) ? "O" : "X"
}

func operate(_ first: Int, and second: Int, with `operator`: String) -> Int {
    switch `operator` {
    case "+":
        return first + second
    default:
        return first - second
    }
}
