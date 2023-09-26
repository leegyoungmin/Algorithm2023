let input = Array(readLine()!)
var stack: Int = 0
var count: Int = 0

for index in 0..<input.count {
    let char = input[index]
    
    if char == "(" {
        stack += 1
    } else {
        stack -= 1
        if input[index - 1] == "(" {
            count += stack
        } else {
            count += 1
        }
    }
}

print(count)
