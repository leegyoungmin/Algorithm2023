func solution(_ s:String) -> String {
    var count: [Character: Int] = [:]
    for text in s {
        count[text, default: 0] += 1
    }
    var result: [String] = []
    for (text, number) in count {
        if number == 1 {
            result.append(String(text))
        }
    }
    return result.sorted().joined()
}
