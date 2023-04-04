func solution(_ my_string:String) -> Int {
    var input: [String] = my_string.split(separator: " ").map({ String($0) })
    var isPlus: Bool = true
    var result: Int = 0
    for text in input {
        switch text {
        case "+":
            isPlus = true
        case "-":
            isPlus = false
        default:
            result = isPlus ? result + Int(text)! : result - Int(text)!
        }
    }
    return result
}
