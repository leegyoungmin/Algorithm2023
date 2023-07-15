func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    let width = arr2[0].count
    let height = arr1.count
    var result = Array(repeating: Array(repeating: 0, count: width), count: height)
    for row in 0..<height {
        for column in 0..<width {
            for index in 0..<arr2.count {
                result[row][column] += arr1[row][index] * arr2[index][column]
            }
        }
    }
    return result
}
