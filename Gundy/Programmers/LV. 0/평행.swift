func solution(_ dots:[[Int]]) -> Int {
    if isParallel([dots[0], dots[1]], and: [dots[2], dots[3]]) ||
        isParallel([dots[0], dots[2]], and: [dots[1], dots[3]]) ||
        isParallel([dots[0], dots[3]], and: [dots[1], dots[2]]) {
        return 1
    }
    return 0
}

func isParallel(_ first: [[Int]], and second: [[Int]]) -> Bool {
    let firstAngle: Double = Double(first[0][1] - first[1][1]) / Double(first[0][0] - first[1][0])
    let secondAngle: Double = Double(second[0][1] - second[1][1]) / Double(second[0][0] - second[1][0])
    return firstAngle == secondAngle
}
