func solution(_ n:Int, _ arr1:[Int], _ arr2:[Int]) -> [String] {
    var result: [[String]] = Array(repeating: Array(repeating: " ", count: n), count: n)
    for x in 0..<arr1.count {
        var row: [Int] = String(arr1[x], radix: 2).compactMap({ Int(String($0)) })
        if row.count < n {
            row = Array(repeating: 0, count: n - row.count) + row
        }
        print(row)
        for y in 0..<row.count {
            if row[y] == 1 {
                result[x][y] = "#"
            }
        }
    }
    for x in 0..<arr2.count {
        var row: [Int] = String(arr2[x], radix: 2).compactMap({ Int(String($0)) })
        if row.count < n {
            row = Array(repeating: 0, count: n - row.count) + row
        }
        print(row)
        for y in 0..<row.count {
            if row[y] == 1 {
                result[x][y] = "#"
            }
        }
    }
    return result.map({ $0.joined() })
}
