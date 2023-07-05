//가장 큰 수
//https://school.programmers.co.kr/learn/courses/30/lessons/42746

//print(solution([6, 10, 2]))
//print(solution([3, 30, 34, 5, 9]))

//print(solution([70, 0, 0, 0, 0])) // 700000
print(solution([0, 0, 0, 0, 0])) // 0


func solution(_ numbers: [Int]) -> String {
    var numbers = numbers.map{ String($0) }
    numbers.sort{ $0 + $1 > $1 + $0 }
    
    if numbers.filter{ $0 == "0" }.count == numbers.count {
        return "0"
    }
    
    return numbers.joined()
}






/*
 숫자 앞자리부터 차례로 비교
 문자타입 숫자여도 9 > 1 크기비교 가능
 문자타입이고 두자리이상 숫자 123 < 333 크기비교 가능
 
 ["6", "10", "2"] -> ["6", "2", "10"]로 정렬되는 이유 -> 610... 보다 62... 가 더 크기때문에

//------------------------------------------------------------- 
 오답 2: 반례
 입력: [0, 0, 0, 0, 0]
 출력: 0                  //오답: 00000

//-------------------------------------------------------------
 오답 1: 숫자 직접 비교, 시간초과

 func solution2(_ numbers: [Int]) -> String {
    var maxNumber: Int = 0
    
    for i in 0..<numbers.count {
        maxNumber = max(maxNumber, dfs(numbers, [numbers[i]]))
    }
    
    return String(maxNumber)
}

func dfs(_ numbers: [Int], _ combination: [Int]) -> Int {
    var combination = combination
    var result: Int = 0
    var maxNumber: Int = 0
    
    if combination.count == numbers.count {
        result = Int(combination.map{ String($0) }.joined())!
        return result
    }
    
    for i in 0..<numbers.count {
        if combination.contains(numbers[i]) { continue }
        combination.append(numbers[i])
        maxNumber = max(maxNumber, dfs(numbers, combination))
        combination.removeLast()
    }

    return maxNumber
}
*/
