func solution(_ names:[String]) -> [String] {
    var result = [String]()
    for index in stride(from: 0, to: names.count, by: 5) {
        result.append(names[index])
    }
    return result
}
