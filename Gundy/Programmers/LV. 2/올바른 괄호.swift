func solution(_ s: String) -> Bool {
    var stack: [Character] = []
    for character in s {
        switch character {
        case "(":
            stack.append(character)
        default:
            guard stack.isEmpty == false else {
                return false
            }
            stack.removeLast()
        }
    }
    return stack.isEmpty ? true : false
}
