class Solution {
    var stack: [Character] = []
    
    func isValid(_ s: String) -> Bool {
        guard s.count % 2 == 0 else { return false }
        
        for char in s {
            if char == "(" || char == "{" || char == "[" {
                stack.append(char)
            } else {
                if stack.isEmpty == false {
                    let lastValue = stack.removeLast()
                    
                    switch lastValue {
                    case "(":
                        if char != ")" {
                            return false
                        }
                        
                    case "{":
                        if char != "}" {
                            return false
                        }
                        
                    case "[":
                        if char != "]" {
                            return false
                        }
                        
                    default: continue
                    }
                } else {
                    return false
                }

            }
        }
        
        return stack.isEmpty ? true : false
    }
}
