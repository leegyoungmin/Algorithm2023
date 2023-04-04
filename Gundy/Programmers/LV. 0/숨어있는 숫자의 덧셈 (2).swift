func solution(_ my_string:String) -> Int {
    var result: Int = 0
    var temporaryValue: String = "0"
    for text in my_string {
        let text: String = String(text)
        guard Int(text) != nil else {
            result += Int(temporaryValue)!
            temporaryValue = "0"
            continue
        }
        temporaryValue += text
    }
    result += Int(temporaryValue)!
    return result
}
