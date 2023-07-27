func solution(_ myString:String) -> String {
    var result = String()
    for text in myString {
        if text < "l" {
            result += "l"
        } else {
            result += String(text)
        }
    }
    return result
}
