func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    var result = [[Int]]()
    
    for i in 0..<arr1.count {
        var subArray = [Int]()
        
        for j in 0..<arr2[0].count {
            var element = 0
            for k in 0..<arr2.count {
                element += arr1[i][k] * arr2[k][j]
            }
            subArray.append(element)
        }
        
        result.append(subArray)
    }
    
    return result
}
