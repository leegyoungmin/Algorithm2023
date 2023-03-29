func solution(_ my_string:String, _ num1:Int, _ num2:Int) -> String {
    var result: [String] = my_string.map({ String($0) })
    let text: String = result[num1]
    result[num1] = result[num2]
    result[num2] = text
    return result.joined()
}
