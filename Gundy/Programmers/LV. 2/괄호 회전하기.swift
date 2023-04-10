func solution(_ s:String) -> Int {
    var result: Int = 0
    var text: String = s
    for _ in 1...s.count {
        text = String(text.reversed())
        let last: String = String(text.removeLast())
        text = String(text.reversed()) + last
        if isValid(text) {
            result += 1
        }
    }
    return result
}

func isValid(_ text: String) -> Bool {
    var stack: [Character] = []
    for character in text {
        switch character {
        case ")":
            if stack.last == "(" {
                stack.removeLast()
            } else {
                return false
            }
        case "]":
            if stack.last == "[" {
                stack.removeLast()
            } else {
                return false
            }
        case "}":
            if stack.last == "{" {
                stack.removeLast()
            } else {
                return false
            }
        default:
            stack.append(character)
        }
    }
    return stack.isEmpty
}
