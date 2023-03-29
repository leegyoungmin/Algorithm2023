func solution(_ cipher:String, _ code:Int) -> String {
    let texts: [String] = cipher.map({ String($0) })
    let count: Int = cipher.count / code
    var result: String = ""
    for index in 1...count {
        result += texts[index * code - 1]
    }
    return result
}
