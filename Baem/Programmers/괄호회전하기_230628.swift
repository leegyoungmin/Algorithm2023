//https://school.programmers.co.kr/learn/courses/30/lessons/76502

func solution(_ s:String) -> Int {
    var arrs = Array(s).map { String($0)}
    var count = 0
    
    arrs += arrs
    
    for start in 0..<s.count {
        var queue = [String]()
        
        for index in start..<(start + s.count) {
            if queue.isEmpty {
                queue.append(arrs[index])
                continue
            }
            
            if arrs[index] == "}" && queue.last == "{"  {
                queue.removeLast()
            } else if arrs[index] == "]" && queue.last == "[" {
                queue.removeLast()
            } else if arrs[index] == ")" && queue.last == "(" {
                queue.removeLast()
            } else {
                queue.append(arrs[index])
            }
        }
        
        if queue.count == 0 {
            count += 1
        }
    }
    
    return count
}
print(solution("[](){}"))
