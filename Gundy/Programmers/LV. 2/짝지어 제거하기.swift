func solution(_ s:String) -> Int{
    var stack: String = ""
    for text in s {
        if stack.last == text {
            stack.removeLast()
        } else {
            stack += String(text)
        }
    }

    return stack.isEmpty ? 1 : 0
}
