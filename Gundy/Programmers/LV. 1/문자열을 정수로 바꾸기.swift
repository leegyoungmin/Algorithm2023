func solution(_ s:String) -> Int {
    let input: [String] = s.map({ String($0) })
    var isNegative: Bool = false
    var result: String = ""
    for text in input {
        if Int(text) != nil {
            result += text
            continue
        }
        if text == "-" {
            isNegative = true
        }
    }
    return isNegative ? -1 * Int(result)! : Int(result)!
}
