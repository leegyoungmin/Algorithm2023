func solution(_ s:String) -> String {
    var result: String = ""
    var temporary: [String] = []
    for text in s {
        if text == " " {
            result +=  toJadenCase(from: temporary) + " "
            temporary = []
        } else {
            temporary.append(text.lowercased())
        }
    }
    result +=  toJadenCase(from: temporary)
    return result
}

func toJadenCase(from text: [String]) -> String {
    var result: String = ""
    for index in 0..<text.count {
        if index == 0 {
            result += text[index].uppercased()
        } else {
            result += text[index]
        }
    }
    return result
}
