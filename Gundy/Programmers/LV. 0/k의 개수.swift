func solution(_ i:Int, _ j:Int, _ k:Int) -> Int {
    var result: [Character: Int] = [:]
    for number in i...j {
        number.description.forEach {
            result[$0, default: 0] += 1
        }
    }
    return result[k.description.first!, default: 0]
}
