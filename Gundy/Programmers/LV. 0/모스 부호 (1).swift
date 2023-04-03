func solution(_ letter:String) -> String {
    let morse: [String: String] = [".-":"a","-...":"b","-.-.":"c","-..":"d",".":"e","..-.":"f", "--.":"g","....":"h","..":"i",".---":"j","-.-":"k",".-..":"l", "--":"m","-.":"n","---":"o",".--.":"p","--.-":"q",".-.":"r", "...":"s","-":"t","..-":"u","...-":"v",".--":"w","-..-":"x", "-.--":"y","--..":"z"]
    let letter: [String] = letter.split(separator: " ").map({ String($0) })
    var result: String = ""
    for text in letter {
        result += morse[text]!
    }
    return result
}
