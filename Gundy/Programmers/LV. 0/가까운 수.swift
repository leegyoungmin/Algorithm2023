func solution(_ array:[Int], _ n:Int) -> Int {
    if array.contains(n) {
        return n
    }
    let lowerNumbers: [Int] = array.filter({ $0 < n }).sorted()
    let higherNumbers: [Int] = array.filter({ $0 > n }).sorted()
    guard lowerNumbers.isEmpty == false else { return higherNumbers.first! }
    guard higherNumbers.isEmpty == false else { return lowerNumbers.last! }
    let lowDifference: Int = n - lowerNumbers.last!
    let highDifference: Int = higherNumbers.first! - n
    return highDifference < lowDifference ? higherNumbers.first! : lowerNumbers.last!
}
