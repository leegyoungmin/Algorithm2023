func solution(_ my_string:String, _ n:Int) -> String {
    return my_string.map(String.init)[0..<n].joined()
}
