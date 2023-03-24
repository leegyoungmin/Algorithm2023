while true {
    let input = readLine()!
    if input == "." { break }
    
    let chars = ["(", ")", "[", "]"]
    let values = input.filter { chars.contains(String($0)) }
    var stack = [Character]()

    for value in values {
        if value == "(" || value == "[" {
            stack.append(value)
        } else {
            if stack.isEmpty {
                stack.append(value)
                break
            } else {
                let lastChar = stack.removeLast()

                if value == ")" {
                    if lastChar != "(" {
                        stack.append(lastChar)
                        break
                    }
                } else if value == "]" {
                    if lastChar != "[" {
                        stack.append(lastChar)
                        break
                    }
                }
            }
        }
    }

    print(stack.isEmpty ? "yes" : "no")
}
