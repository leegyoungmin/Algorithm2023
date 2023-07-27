func solution(_ str_list:[String], _ ex:String) -> String {
    var result = String()
    for text in str_list {
        guard text.contains(ex) == false else {
            continue
        }
        result += text
    }
    return result
}
