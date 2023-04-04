func solution(_ my_str:String, _ n:Int) -> [String] {
    var result: [String] = []
    var input: [String] = my_str.map({ String($0) }).reversed()
    while input.count >= n {
        var text: String = ""
        for _ in 1...n {
            text += input.removeLast()
        }
        result.append(text)
    }
    if input.isEmpty == false {
        result.append(input.reversed().joined())
    }
    return result
}
