import Foundation

func solution(_ numbers: [Int]) -> String {
    var result = numbers.map { String($0) }
    
    result.sort { first, second in
        return first + second > second + first
    }
    
    let answer = result.joined()
    
    if let zero = Int(answer) {
        return zero.description
    }
    
    return answer
}

let numbers = [3, 30, 34, 5, 9]
print(solution(numbers))
