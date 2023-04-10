func solution(_ want:[String], _ number:[Int], _ discount:[String]) -> Int {
    var list: [String : Int] = [:]
    for (item, count) in zip(want, number) {
        list[item] = count
    }
    var result: Int = 0
    for day in 0...discount.count - 10 {
        var wishList: [String : Int] = list
        for date in discount[day...day + 9] {
            wishList[date, default: 0] -= 1
        }
        guard wishList.values.filter({ $0 != 0 }).count == 0 else { continue }
        result += 1
    }
    return result
}
