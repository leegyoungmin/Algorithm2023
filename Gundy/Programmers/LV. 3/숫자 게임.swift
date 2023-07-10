func solution(_ a:[Int], _ b:[Int]) -> Int {
    let a = a.sorted()
    let b = b.sorted()
    var result = 0
    var index = 0
    for a in a {
        guard index < b.count else {
            break
        }
        while index < b.count,
              b[index] <= a {
            index += 1
        }
        if index < b.count,
           b[index] > a {
            result += 1
            index += 1
        }
    }
    return result
}
