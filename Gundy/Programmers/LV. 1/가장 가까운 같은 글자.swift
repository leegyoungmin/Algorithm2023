func solution(_ s:String) -> [Int] {
    var stack: [Character] = []
    var result: [Int] = []
    for text in s {
        if stack.contains(text) {
            var copiedStack: [Character] = stack
            var count: Int = 1
            while copiedStack.last != text {
                copiedStack.removeLast()
                count += 1
            }
            stack.append(text)
            result.append(count)
        } else {
            stack.append(text)
            result.append(-1)
        }
    }
    return result
}
