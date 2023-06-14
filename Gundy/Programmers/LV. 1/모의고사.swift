enum MathGiver: CaseIterable {
    case equally
    case twoMainly
    case eachNumberTwice

    var pick: [Int] {
        switch self {
        case .equally:
            return Array(1...5)
        case .twoMainly:
            return [1, 3, 4, 5].flatMap { [2, $0] }
        case .eachNumberTwice:
            return [3, 1, 2, 4, 5].flatMap { [$0, $0] }
        }
    }
}

func solution(_ answers:[Int]) -> [Int] {
    var maxCount = 0
    var result = [(Int, Int)]()
    for mathGiver in MathGiver.allCases {
        let pick = mathGiver.pick
        var count = 0
        for index in 0..<answers.count {
            if answers[index] == pick[index % pick.count] {
                count += 1
            }
        }
        if count > maxCount {
            maxCount = count
        }
        result.append((result.count + 1, count))
    }
    return result.filter { $0.1 == maxCount }.map{ $0.0 }
}
