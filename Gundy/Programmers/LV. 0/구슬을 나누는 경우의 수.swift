func solution(_ balls:Int, _ share:Int) -> Int {
    var numerator: [Int] = stride(from:share + 1, through: balls, by: 1).map({ $0 })
    var denominator: [Int] = stride(from:2, through: balls - share, by: 1).map({ $0 })
    var notDividedNumbers: [Int] = []
    while denominator.isEmpty == false {
        var number = denominator.removeLast()
        var isDivided: Bool = false
        for index in 0..<numerator.count {
            if numerator[index] % number == 0 {
                numerator[index] = numerator[index] / number
                isDivided = true
                break
            }
        }
        if isDivided == false {
            notDividedNumbers.append(number)
        }
    }
    var result: Int = numerator.reduce(1, *)
    notDividedNumbers.forEach { result /= $0 }
    return result
}
