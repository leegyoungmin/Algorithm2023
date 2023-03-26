func solution(_ my_string:String, _ letter:String) -> String {
    var texts: [String] = []
    my_string.forEach {
        let text: String = String($0)
        if text != letter {
            texts.append(text)
        }
    }
    return texts.joined()
}
