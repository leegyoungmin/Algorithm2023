func solution(_ k:Int, _ score:[Int]) -> [Int] {
    var scores: [Int] = score.reversed()
    var stack: [Int] = []
    var result: [Int] = []
    for _ in 1...k {
        stack.append(scores.removeLast())
        stack = stack.sorted(by: >)
        result.append(stack.last!)
    }
    for point in scores.reversed() {
        stack = insert(point, stack)
        result.append(stack.last!)
    }
    return result
}

func insert(_ score: Int, _ stack: [Int]) -> [Int] {
    var temporaryContainer: [Int] = []
    var stack: [Int] = stack
    while stack.isEmpty == false {
        let last: Int = stack.removeLast()
        if last > score {
            stack.append(last)
            break
        }
        temporaryContainer.append(last)
    }
    guard temporaryContainer.isEmpty == false else { return stack }
    stack.append(score)
    while temporaryContainer.count > 1 {
        stack.append(temporaryContainer.removeLast())
    }
    return stack
}
