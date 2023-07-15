func solution(_ my_string:String, _ n:Int) -> String {
    return my_string.map(String.init)[my_string.count - n..<my_string.count].joined()
}
