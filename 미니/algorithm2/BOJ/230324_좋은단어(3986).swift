let N = Int(readLine()!)!
var inputs = [String]()

for _ in 0..<N {
    let input = readLine()!
    inputs.append(input)
}

var count: Int = 0

for input in inputs {
    var stack = [Character]()
    
    for char in input {
        if stack.isEmpty {
            stack.append(char)
        } else {
            let lastValue = stack.removeLast()
            
            if lastValue != char {
                stack.append(lastValue)
                stack.append(char)
            }
        }
    }
    
    if stack.isEmpty {
        count += 1
    }
}

print(count)
