func solution(_ myString:String) -> String {
    let target = myString.lowercased()
    var result = String()
    for text in target {
        if text == "a" {
            result += "A"
        } else {
            result += String(text)
        }
    }
    return result
}
