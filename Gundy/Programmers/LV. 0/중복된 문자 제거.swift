func solution(_ my_string:String) -> String {
    var result: String = ""
    for text in my_string {
        if result.contains(text) == false {
            result += String(text)
        }
    }
    return result
}
