func solution(_ arr:[[Int]]) -> [Int] {
    func recursion(_ term: Int, origin point: (x: Int, y: Int)) -> [Int] {
        guard term > 0 else { return [arr[point.x][point.y]] }
        let origin = recursion(term / 2, origin: point)
        var isEqual = origin.count == 1
        var result = origin
        for (x, y) in zip([point.x, point.x + term, point.x + term],
                          [point.y + term, point.y, point.y + term]) {
            let otherPoint = recursion(term / 2, origin: (x, y))
            if isEqual,
               origin != otherPoint {
                isEqual = false
            }
            result += otherPoint
        }
        return isEqual ? origin : result
    }
    var zeroCount = 0
    var oneCount = 0
    for number in recursion(arr.count / 2, origin: (0, 0)) {
        if number == 0 {
            zeroCount += 1
        } else {
            oneCount += 1
        }
    }
    return [zeroCount, oneCount]
}
