func solution(_ absolutes:[Int], _ signs:[Bool]) -> Int {
    var result: [Int] = []
    for (value, sign) in zip(absolutes, signs) {
        if sign {
            result.append(value)
        } else {
            result.append(-1 * value)
        }
    }
    return result.reduce(0, +)
}
