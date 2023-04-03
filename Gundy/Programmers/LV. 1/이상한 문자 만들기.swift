func solution(_ s:String) -> String {
    var result: String = ""
    var count: Int = 0
    for text in s {
        if text == " " {
            count = 0
            result += " "
            continue
        }
        result += count % 2 == 0 ? text.uppercased() : text.lowercased()
        count += 1
    }
    return result
}
