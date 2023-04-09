func solution(_ A:[Int], _ B:[Int]) -> Int {
    var firstList: [Int] = A.sorted()
    var secondList: [Int] = B.sorted().reversed()
    var result: Int = 0
    for (first, second) in zip(firstList, secondList) {
        result += first * second
    }
    return result
}
