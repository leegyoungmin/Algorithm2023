func solution(_ ingredient:[Int]) -> Int {
    var stack: [Int] = []
    var result: Int = 0
    for food in ingredient {
        stack.append(food)
        guard stack.count > 3 else { continue }
        var temporary: [Int] = []
        while temporary.count < 4 {
            temporary.append(stack.removeLast())
        }
        if temporary == [1, 3, 2, 1] {
            result += 1
        } else {
            stack += temporary.reversed()
        }
    }
    return result
}햄버거 만들기
