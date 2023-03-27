func solution(_ my_string:String) -> String {
    let blackList: [Character] = ["a", "e", "i", "o", "u"]
    var result: [String] = []
    for text in my_string {
        if blackList.contains(text) == false {
            result.append(String(text))
        }
    }
    return result.joined()
}
