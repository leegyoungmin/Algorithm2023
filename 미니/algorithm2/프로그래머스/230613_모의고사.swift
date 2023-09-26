func solution(_ answers:[Int]) -> [Int] {
    let first = [1,2,3,4,5]
    let second = [2,1,2,3,2,4,2,5]
    let third = [3,3,1,1,2,2,4,4,5,5]
    
    var result: [Int] = Array(repeating: 0, count: 3)
    
    for i in 0..<answers.count {
        if first[i % 5] == answers[i] {
            result[0] += 1
        }
        
        if second[i % 8] == answers[i] {
            result[1] += 1
        }
        
        if third[i % 10] == answers[i] {
            result[2] += 1
        }
    }
    
    let maxValue = result.max()!
    
    return result.enumerated().filter { $0.element == maxValue }.map { $0.offset + 1 }.sorted()
}

let answers = [1,3,2,4,2]
print(solution(answers))
