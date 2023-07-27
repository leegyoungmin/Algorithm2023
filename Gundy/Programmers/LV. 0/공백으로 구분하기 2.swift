func solution(_ my_string:String) -> [String] {
    var result = [String]()
    var stack = [String]()
    for text in my_string.map(String.init) {
        if text == " " {
            if stack.isEmpty == false {
                result.append(stack.joined())
                stack.removeAll()
            }
        } else {
            stack.append(text)
        }
    }
    if stack.isEmpty == false {
        result.append(stack.joined())
        stack.removeAll()
    }
    return result
}
