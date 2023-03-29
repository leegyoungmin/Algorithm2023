func solution(_ age:Int) -> String {
    let texts: [String] = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j"]
    return age.description.map({ texts[Int(String($0))!] }).joined()
}
