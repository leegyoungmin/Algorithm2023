func solution(_ priorities: [Int], _ location: Int) -> Int {
    var answer = 0
    var queue = [(location: Int, p: Int)]()
    
    for (idx, p) in priorities.enumerated() {
        queue.append((idx, p))
    }
    
    while queue.count != .zero {
        let temp = queue.removeFirst()
        
        if queue.contains(where: { $0.p > temp.p }) { // 다른 작업이 제일 높은 경우
            queue.append(temp)
        } else {
            answer += 1
            
            if temp.location == location {
                break
            }
        }
        
        
    }
    
    return answer
}

let p = [1, 1, 9, 1, 1, 1]
print(solution(p, 0))
