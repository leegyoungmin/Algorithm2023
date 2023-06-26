func solution(_ s: String) -> Int {
    var stack = [Character]()
    
    if s.count % 2 == 1 { return 0 }
    
    for i in s {
        if stack.isEmpty {
            stack.append(i)
        } else {
            let last = stack.removeLast()
            
            if last != i { // 다른 경우
                stack.append(last)
                stack.append(i)
            }
        }
    }
    
    return stack.isEmpty ? 1 : 0
}
