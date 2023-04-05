func solution(_ number:[Int]) -> Int {
    var result: Int = 0
    for firstIndex in 0..<number.count-2 {
        let first: Int = number[firstIndex]
        for secondIndex in firstIndex+1..<number.count-1 {
            let second: Int = number[secondIndex]
            for thirdIndex in secondIndex+1..<number.count {
                let third: Int = number[thirdIndex]
                if first + second + third == 0 {
                    result += 1
                }
            }
        }
    }
    return result
}
