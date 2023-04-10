func solution(_ elements:[Int]) -> Int {
    let numbers: [Int] = elements + elements
    var result: Set<Int> = Set(elements)
    for index in 0..<elements.count {
        var temporary: Int = numbers[index]
        for count in 1..<elements.count - 1 {
            temporary += numbers[index + count]
            result.insert(temporary)
        }
    }
    result.insert(elements.reduce(0, +))
    return result.count
}
