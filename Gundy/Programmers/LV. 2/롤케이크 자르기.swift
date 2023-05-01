func solution(_ topping:[Int]) -> Int {
    let leftCount: [Int] = {
        var numbers: Set<Int> = []
        var count = [0]
        for topping in topping {
            numbers.insert(topping)
            count.append(numbers.count)
        }
        return count
    }()
    let rightCount: [Int] = {
        var numbers: Set<Int> = []
        var count = [0]
        for topping in topping.reversed() {
            numbers.insert(topping)
            count.append(numbers.count)
        }
        return count.reversed()
    }()
    var result = 0
    for (left, right) in zip(leftCount, rightCount) {
        if left == right {
            result += 1
        }
    }
    return result
}
