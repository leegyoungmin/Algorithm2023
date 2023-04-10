func solution(_ k:Int, _ tangerine:[Int]) -> Int {
    var count: [Int : Int] = [:]
    for fruit in tangerine {
        count[fruit, default: 0] += 1
    }
    var result: Int = 0
    var target: Int = k
    for counting in count.values.sorted(by: >) {
        result += 1
        target -= counting
        if target <= 0 {
            break
        }
    }
    return result
}
