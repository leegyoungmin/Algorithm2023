func solution(_ my_string:String, _ n:Int) -> String {
    return my_string.map({ Array(repeating: String($0), count: n).joined() }).joined()
}
