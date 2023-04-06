func solution(_ d:[Int], _ budget:Int) -> Int {
    var price: Int = 0
    var result: Int = 0
    for number in d.sorted() {
        price += number
        if price > budget {
            break
        }
        result += 1
    }
    return result
}
