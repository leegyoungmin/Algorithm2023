func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    var numbers: [[Int]] = Array(repeating: Array(repeating: 0, count: arr2.first!.count), count: arr1.count)
    for x in 0..<arr2.first!.count {
        for y in 0..<arr1.count {
            var result: Int = 0
            for index in 0..<arr2.count {
                result += arr1[y][index] * arr2[index][x]
            }
            numbers[y][x] = result
        }
    }
    return numbers
}
