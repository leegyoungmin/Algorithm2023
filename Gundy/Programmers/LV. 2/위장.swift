func solution(_ clothes:[[String]]) -> Int {
    var count: [String : Int] = [:]
    for cloth in clothes {
        count[cloth[1], default: 1] += 1
    }
    return count.values.reduce(1, *) - 1
}
