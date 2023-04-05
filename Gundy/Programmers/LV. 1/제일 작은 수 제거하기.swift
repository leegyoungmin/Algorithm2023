func solution(_ arr:[Int]) -> [Int] {
    guard arr.count > 1 else { return [-1] }
    let minimumValue: Int = arr.sorted().first!
    let index: Int = arr.firstIndex(of: minimumValue)!
    var numbers: [Int] = arr
    numbers.remove(at: index)
    return numbers
}
