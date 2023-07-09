func solution(_ n:Int, _ computers:[[Int]]) -> Int {
    var result = 0
    var hasNetWork = Array(repeating: false, count: n)
    var map = Array(repeating: [Int](), count: n)
    
    for row in 0..<n {
        for column in (row)..<n {
            if row == column {
                continue
            } else if computers[row][column] == 1 {
                map[row].append(column)
                map[column].append(row)
            }
        }
    }
    
    for i in 0..<n {
        if map[i].isEmpty {
            continue
        }
        
        if hasNetWork[i] {
            continue
        }
        
        result += 1
        
        var stack = [Int]()
        stack = map[i]
        
        while !stack.isEmpty {
            let lastNum = stack.removeLast()
            
            if !hasNetWork[lastNum] {
                hasNetWork[lastNum] = true
                stack += map[lastNum]
            }
        }
    }
    
    for net in hasNetWork {
        if net == false {
            result += 1
        }
    }
    
    return result
}
