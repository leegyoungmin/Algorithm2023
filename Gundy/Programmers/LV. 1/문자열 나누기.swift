func solution(_ s:String) -> Int {
    var result: [String] = []
    var temporary: String = ""
    var xCount: Int = 0
    var othersCount: Int = 0
    var stack: [String] = s.reversed().map({ String($0) })
    while stack.isEmpty == false {
        if temporary.isEmpty {
            temporary += stack.removeLast()
            xCount += 1
        } else {
            let text: String = stack.removeLast()
            temporary += text
            if Character(text) == temporary.first {
                xCount += 1
            } else {
                othersCount += 1
            }
            if xCount == othersCount {
                result.append(temporary)
                temporary = ""
                xCount = 0
                othersCount = 0
            }
        }
    }
    return temporary.isEmpty ? result.count : result.count + 1
}
