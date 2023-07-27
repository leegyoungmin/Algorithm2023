func solution(_ myString:String, _ pat:String) -> Int {
    var target = String()
    for text in myString {
        if text == "A" {
            target += "B"
        } else {
            target += "A"
        }
    }
    return target.contains(pat) ? 1 : 0
}
