func solution(_ s:String) -> Bool {
    var values = Array(s)
    var stack = [Character]()

    for index in 0..<values.count {
        let char = values[index]

        if char == "(" {
            stack.append(char)
        } else {
            if stack.count == 0 {
                return false
            } else {
                stack.removeLast()
            }
        }
    }
    
    return stack.count == 0 ? true : false
}
