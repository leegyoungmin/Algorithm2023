import Foundation

func solution(_ s:String) -> Int {
    let s = Array(s)
    var answer = 0
    
    for idx in 0..<s.count {
        let values = Array(s[idx...] + s[0..<idx])
        if checkChars(values) {
            answer += 1
        }
    }
    return answer
}

func checkChars(_ arr: [Character]) -> Bool {
    var stack = [Character]()
    
    for char in arr {
        if stack.isEmpty {
            stack.append(char)
        } else {
            let prev = stack.removeLast()
            
            switch prev {
            case "[":
                if char != "]" {
                    stack.append(prev)
                    stack.append(char)
                }
            case "{":
                if char != "}" {
                    stack.append(prev)
                    stack.append(char)
                }
            case "(":
                if char != ")" {
                    stack.append(prev)
                    stack.append(char)
                }
            default:
                stack.append(char)
            }
        }
    }
    
    return stack.isEmpty
}
