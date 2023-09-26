func solution(_ queue1: [Int], _ queue2: [Int]) -> Int {
    let limit = (queue1.count + queue2.count) * 3
    var sum1 = queue1.reduce(0, +), sum2 = queue2.reduce(0, +)
    var f1 = 0, f2 = 0
    var q1 = queue1, q2 = queue2
    var cnt = 0
    
    while cnt <= limit {
        if sum1 == sum2 {
            break
        }
        
        if sum1 < sum2 {
            sum1 += q2[f2]
            sum2 -= q2[f2]
            q1.append(q2[f2])
            f2 += 1
        } else {
            sum2 += q1[f1]
            sum1 -= q1[f1]
            q2.append(q1[f1])
            f1 += 1
        }
        
        cnt += 1
    }
    
    return cnt > limit ? -1 : cnt
}
