func solution(_ arr:[[Int]]) -> Int {
    var checked = Set<Set<Int>>()
    for row in 0..<arr.count {
        for column in 0..<arr.count {
            guard checked.contains([row, column]) == false else { continue }
            guard arr[row][column] == arr[column][row] else { return 0 }
            checked.insert([column, row])
        }
    }
    return 1
}
