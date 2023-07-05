func solution(_ k:Int, _ dungeons:[[Int]]) -> Int {
    var currentFatigue = k
    var result = 0
    var currentResult = 0
    var visit = Array(repeating: false, count: dungeons.count)

    func recursion(_ depth: Int) {
        print(depth, result, currentFatigue, currentResult)
        result = max(result, currentResult)
        if depth >= visit.count {
//            print(result, currentFatigue)
//            result = max(result, currentResult)
            return
        }

        for index in 0..<visit.count {
            if visit[index] == false {
                if dungeons[index][0] <= currentFatigue {
                    print(visit)
                    currentFatigue -= dungeons[index][1]
                    visit[index] = true
                    currentResult += 1
                    
                    recursion(depth + 1)
                    currentFatigue += dungeons[index][1]
                    visit[index] = false
                    currentResult -= 1
                }
            }
        }
    }

    recursion(0)

    return result
}

//print(solution(80, [[80,20],[50,40],[30,10]]))

//func solution(_ k:Int, _ dungeons:[[Int]]) -> Int {
//
//
//    return -1
//}
//
print(solution(80, [[80,20],[50,40],[30,10]]))

//print(solution(20, [[10,10], [15,10]]))
//print(solution(10, [[9, 2], [10, 3], [7, 3], [5, 4], [1, 1]]))
