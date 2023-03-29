func solution(_ my_string:String) -> String {
    var result: String = ""
    for character in my_string {
        if character.isUppercase {
            result += character.lowercased()
        }
        if character.isLowercase {
            result += character.uppercased()
        }
    }
    return result
}
