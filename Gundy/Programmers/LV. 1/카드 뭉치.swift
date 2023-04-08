func solution(_ cards1:[String], _ cards2:[String], _ goal:[String]) -> String {
    var first: [String] = cards1.reversed()
    var second: [String] = cards2.reversed()
    for text in goal {
        if first.last == text {
            first.removeLast()
            continue
        }
        if second.last == text {
            second.removeLast()
            continue
        }
        return "No"
    }
    return "Yes"
}
