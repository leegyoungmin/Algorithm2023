func solution(_ sides:[Int]) -> Int {
    let maximum: Int = sides.first! + sides.last! - 1
    var result: Int = 0
    for number in 1...maximum {
        let sides: [Int] = (sides + [number]).sorted()
        if sides[0] + sides[1] > sides[2] {
            result += 1
        }
    }
    return result
}
