func solution(_ strArr:[String]) -> [String] {
    var result = strArr
    for index in 0..<result.count {
        if index % 2 == 0 {
            result[index] = result[index].lowercased()
        } else {
            result[index] = result[index].uppercased()
        }
    }
    return result
}
