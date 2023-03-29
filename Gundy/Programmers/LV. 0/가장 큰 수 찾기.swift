func solution(_ array:[Int]) -> [Int] {
    let biggestNumber: Int = array.sorted().last!
    let index: Int = array.firstIndex(of: biggestNumber)!
    return [biggestNumber, index]
}
