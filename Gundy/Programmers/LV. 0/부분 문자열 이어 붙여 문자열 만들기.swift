func solution(_ my_strings:[String], _ parts:[[Int]]) -> String {
    var result = String()
    for (text, indices) in zip(my_strings, parts) {
        result += text.map(String.init)[indices[0]...indices[1]].joined()
    }
    return result
}
