func solution(_ s:String) -> Int {
    var stack: [Int] = []
    for text in s.split(separator: " ").map({ String($0) }) {
        if text == "Z" {
            stack.popLast()
        } else {
            stack.append(Int(text)!)
        }
    }
    return stack.reduce(0, +)
}
