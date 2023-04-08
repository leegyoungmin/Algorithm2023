func solution(_ answers:[Int]) -> [Int] {
    let firstPoint: (value: Int, index: Int) = (compare(answers, and: [1, 2, 3, 4, 5]), 1)
    let secondPoint: (value: Int, index: Int) = (compare(answers, and: [2, 1, 2, 3, 2, 4, 2, 5]), 2)
    let thirdPoint: (value: Int, index: Int) = (compare(answers, and: [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]), 3)
    let maximumPoint: Int = max(max(firstPoint.value, secondPoint.value), thirdPoint.value)
    return [firstPoint, secondPoint, thirdPoint].filter({ $0.value == maximumPoint }).map({ $0.index })
}

func compare(_ answers: [Int], and numbers: [Int]) -> Int {
    var result: Int = 0
    for index in 0..<answers.count {
        let answer: Int = answers[index]
        let number: Int = numbers[index % numbers.count]
        if answer == number {
            result += 1
        }
    }
    return result
}
