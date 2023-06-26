func solution(_ s:String) -> Int {
    var stack = [Character]()
    for character in s {
        if stack.last == character {
            stack.removeLast()
        } else {
            stack.append(character)
        }
    }
    return stack.isEmpty ? 1 : 0
}
