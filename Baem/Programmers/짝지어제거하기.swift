func solution(_ s:String) -> Int {
    var stack = [Character]()
    
    for currentCharacter in s {
        if stack.isEmpty {
            stack.append(currentCharacter)
            continue
        }
        
        if stack.last == currentCharacter {
            stack.removeLast()
        } else {
            stack.append(currentCharacter)
        }
    }
    
    return stack.isEmpty ? 1 : 0
}
