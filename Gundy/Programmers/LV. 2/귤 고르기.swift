func solution(_ k:Int, _ tangerine:[Int]) -> Int {
    var counter = [Int: Int]()
    for size in tangerine {
        counter[size, default: 0] += 1
    }
    var result = 0
    var needQuantity = k
    for count in counter.values.sorted(by: >) {
        needQuantity -= count
        result += 1
        if needQuantity <= 0 {
            break
        }
    }
    return result
}
