func solution(_ citations:[Int]) -> Int {
    let citations: [Int] = citations.sorted(by: >)
    var result: Int = 0
    for number in 1... {
        var count: Int = 0
        for citation in citations {
            guard citation >= number else { break }
            count += 1
            if count == number {
                break
            }
        }
        if count == number {
            result = count
        } else {
            break
        }
    }
    return result
}
