//효율 낮음
func solution1(_ s:String) -> Bool {
    var stack = [String]()
    
    for element in s {
        if element == "(" {
            stack.append(String(element))
        } else if element == ")" {
            if stack.last == "(" {
                stack.removeLast()
            } else {
                return false
            }
        }
    }
    
    if !stack.isEmpty {
        return false
    }
    
    return true
}

//효율 높음
func solution2(_ s:String) -> Bool {
    var count = 0
    
    for element in s {
        if element == "(" {
            count += 1
        } else if element == ")" {
            if count == 0 {
                return false
            } else {
                count -= 1
            }
        }
    }
    
    if count == 0 {
        return true
    }
    
    return false
}
