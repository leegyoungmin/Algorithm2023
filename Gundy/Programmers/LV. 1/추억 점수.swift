func solution(_ name:[String], _ yearning:[Int], _ photo:[[String]]) -> [Int] {
    var yearningPoint: [String : Int] = [:]
    for (person, point) in zip(name, yearning) {
        yearningPoint[person] = point
    }
    return photo.map({ $0.compactMap({ yearningPoint[$0] }).reduce(0, +) })
}
