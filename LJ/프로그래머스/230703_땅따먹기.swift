//땅따먹기
//https://school.programmers.co.kr/learn/courses/30/lessons/12913

print(solution([[1,2,3,5],[5,6,7,8],[4,3,2,1]]))

func solution(_ land: [[Int]]) -> Int {
    var d = land

    for row in 1..<land.count {
        d[row][0] += max(d[row-1][1], d[row-1][2], d[row-1][3])
        d[row][1] += max(d[row-1][0], d[row-1][2], d[row-1][3])
        d[row][2] += max(d[row-1][0], d[row-1][1], d[row-1][3])
        d[row][3] += max(d[row-1][0], d[row-1][1], d[row-1][2])
    }
    
    return d[land.count-1].max()!
}


/*
 오답
X
r행까지의 최대값  =  r-1행까지의 최대값 + r행의 최대값
단, 열은 겹치면 안됨

O
dp
 2차원배열 전체 복사
 해당 행,렬에 최대값 넣기
 모든 행,렬 = 최대값
 마지막 행에서의 최대값 == 결과값
 
 //---------------------------------------------------
 func solution2(_ land: [[Int]]) -> Int {
    
    func dp(_ row: Int) -> (sum: Int, col: Int) {
        var maxSum = 0
        var currentValue = land[row][0]
        var beforeCol = 0
        
        if row == 0 {
            let value = land[0].max()!
            let index = land[0].firstIndex(of: value)!
            return (value, index)
        }
        
        var tuple: (sum: Int, col: Int) = dp(row-1)
        
        for i in 0..<4 {  //현재 행의 최대값
            if i == tuple.col { continue }
            if currentValue <= max(currentValue, land[row][i]) {
                currentValue = max(currentValue, land[row][i])
                beforeCol = i
            }
        }
        maxSum = tuple.sum + currentValue
        
        return (maxSum, beforeCol)
    }
    
    return dp(land.count-1).sum
}


//---------------------------------------------------
 func solution3(_ land: [[Int]]) -> Int {
     var maxSum = 0
     
     for col in 0..<4 {
         let value: Int = land[0][col]
         maxSum = max(maxSum, dfs(land, 0, col, [value]))
     }
     
     return maxSum
 }

 func dfs(_ land: [[Int]], _ row: Int, _ currentCol: Int, _ combination: [Int]) -> Int {
     var combination = combination
     var sum: [Int] = []
     
     if row+1 == land.count {
         return combination.reduce(0, +)
     }
     
     for nextCol in 0..<4 {
         if nextCol == currentCol { continue }
         let value = land[row+1][nextCol]
         combination.append(value)
         sum.append(dfs(land, row+1, nextCol, combination))
         combination.removeLast()
     }
     
     return sum.max()!
 }
 */
