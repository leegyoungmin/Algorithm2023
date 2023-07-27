func solution(_ my_string:String, _ alp:String) -> String {
    var result = String()
    for text in my_string.map(String.init) {
        if text == alp {
            result += text.uppercased()
        } else {
            result += text
        }
    }
    return result
}
