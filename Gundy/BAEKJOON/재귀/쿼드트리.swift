func solution() {
    let length = Int(readLine()!)!
    var scene = [[Int]]()
    for _ in 1...length {
        scene.append(readLine()!.compactMap({ Int(String($0)) }))
    }
    func recursion(term: Int, origin point: (row: Int, column: Int)) -> String {
        guard term > 0 else { return "\(scene[point.row][point.column])" }
        let origin = recursion(term: term / 2, origin: point)
        var result = [origin]
        var isEqual = origin.count == 1 ? true : false
        for (row, column) in zip([point.row, point.row + term, point.row + term],
                                 [point.column + term, point.column, point.column + term]) {
            let otherPoint = recursion(term: term / 2, origin: (row, column))
            if isEqual,
               origin != otherPoint {
                isEqual = false
            }
            result.append(otherPoint)
        }
        return isEqual ? origin : result.map({ $0.count > 1 ? "(\($0))" : "\($0)" }).joined()
    }
    let result = recursion(term: length / 2, origin: (0, 0))
    print(result.count == 1 ? "\(result)" : "(\(result))")
}

solution()
