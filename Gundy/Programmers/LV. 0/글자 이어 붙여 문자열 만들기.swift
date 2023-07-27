func solution(_ my_string:String, _ index_list:[Int]) -> String {
    var result = String()
    let target = my_string.map(String.init)
    for index in index_list {
        result += target[index]
    }
    return result
}
