let N = Int(readLine()!)!

for _ in 0..<N {
    let input = readLine()!
    var stack: [Character] = []
    
    for char in input {
        if char == "(" {
            stack.append(char)
        } else {
            if stack.isEmpty {
                stack.append(char)
            } else {
                let lastValue = stack.removeLast()
                
                if lastValue != "(" {
                    stack.append(lastValue)
                    stack.append(char)
                }
            }
        }
    }
    
    print(stack.isEmpty ? "YES" : "NO")
}
