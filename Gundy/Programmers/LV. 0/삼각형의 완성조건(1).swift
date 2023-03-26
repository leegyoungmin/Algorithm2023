func solution(_ sides:[Int]) -> Int {
    var sides: [Int] = sides.sorted()
    let longSide: Int = sides.removeLast()
    return (sides.first! + sides.last!) > longSide ? 1 : 2
}
