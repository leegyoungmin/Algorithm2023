func solution(_ my_string:String) -> String {
    return my_string.reversed().map({ String($0) }).joined()
}
