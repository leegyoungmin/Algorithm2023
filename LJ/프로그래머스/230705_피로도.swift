//피로도
//https://school.programmers.co.kr/learn/courses/30/lessons/87946

print(solution(80, [[80,20],[50,40],[30,10]]))

func solution(_ k:Int, _ dungeons:[[Int]]) -> Int {
    var result: Int = 0

    for i in 0..<dungeons.count {
        result = dfs(dungeons, k, [i])
        if result == dungeons.count { break }
    }
    
    return result
}

func dfs(_ dungeons: [[Int]], _ k: Int, _ numbers: [Int]) -> Int {
    var numbers = numbers
    var count: Int = 0
    
    if numbers.count == dungeons.count {   //순서가 담긴 배열 numbers [0,1,2] [0,2,1] [1,0,2] [1,2,0] ...
        var power: Int = k
        for index in numbers {           // [0,1,2]
            if power >= dungeons[index][0] {
                power -= dungeons[index][1]
                count += 1
            } else {
                break
            }
        }
        
        return count
    }
    
    for i in 0..<dungeons.count {
        if numbers.contains(i) { continue }
        numbers.append(i)
        count = max(count, dfs(dungeons, k, numbers))
        numbers.removeLast()
    }
    
    return count
}

/*
 ["최소 필요 피로도", "소모 피로도"] 

테스트케이스 9,15,16,17 실패
*/
