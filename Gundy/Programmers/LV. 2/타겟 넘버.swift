func solution(_ numbers:[Int], _ target:Int) -> Int {
    var result: [Int] = []
    var needVisit: [(partialResult: Int, index: Int)] = [(numbers[0], 0), (-1 * numbers[0], 0)]
    while needVisit.isEmpty == false {
        let (number, index) = needVisit.removeLast()
        guard index < numbers.count - 1 else {
            result.append(number)
            continue
        }
        needVisit.append((number + numbers[index + 1], index + 1))
        needVisit.append((number - numbers[index + 1], index + 1))
    }
    return result.filter({ $0 == target }).count
}
