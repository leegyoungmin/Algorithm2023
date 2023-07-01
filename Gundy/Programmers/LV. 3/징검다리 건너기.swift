func solution(_ stones:[Int], _ k:Int) -> Int {
    var indices = Set<Int>()
    let sortedStones = stones.enumerated().sorted {
        return $0.element < $1.element
    }
    var result = 0
    for stone in sortedStones {
        indices.insert(stone.offset)
        guard indices.count >= k else {
            continue
        }
        var count = 1
        var left = stone.offset - 1
        var right = stone.offset + 1
        while indices.contains(left) {
            count += 1
            left -= 1
        }
        while indices.contains(right) {
            count += 1
            right += 1
        }
        if count >= k {
            result = stone.element
            break
        }
    }
    return result
}
