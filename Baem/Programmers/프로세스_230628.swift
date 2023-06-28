func solution(_ priorities:[Int], _ location:Int) -> Int {
    var prioritiesQueue = priorities
    var typeCount = Array(repeating: 0, count: 10)
    var typeCountIndex = 9
    
    for value in priorities {
        typeCount[value] += 1
    }
    
    var count = 0
    
    while typeCountIndex > 0 {
        for index in 0..<prioritiesQueue.count {
            
            if typeCount[typeCountIndex] == 0 {
                while typeCount[typeCountIndex] == 0 {
                    typeCountIndex -= 1
                }
            }
            
            if prioritiesQueue[index] == typeCountIndex {
                if index == location {
                    return count + 1
                }
                typeCount[typeCountIndex] -= 1
                prioritiesQueue[index] = 0
                count += 1
            } else {
                continue
            }
        }
    }
    
    return count
}

print(solution([2, 1, 3, 2], 2)) // 1
