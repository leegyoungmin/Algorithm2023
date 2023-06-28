//https://school.programmers.co.kr/learn/courses/30/lessons/138476
// 해시 (딕셔너리)

func solution(_ k:Int, _ tangerine:[Int]) -> Int {
    var dictionary = [Int:Int]()
    var resultArray = [Int]()
    var result = 0
    var count = 0
    
    for element in tangerine {
        if dictionary[element] != nil {
            dictionary[element]! += 1
        } else {
            dictionary[element] = 1
        }
    }
    
    for element in dictionary {
        resultArray.append(element.value)
    }
    
    resultArray.sort()
    
    while result < k {
        result += resultArray.removeLast()
        count += 1
    }
    
    return count
}


print(solution(6, [1, 3, 2, 5, 4, 5, 2, 3]))
