func solution(_ users:[[Int]], _ emoticons:[Int]) -> [Int] {
    var result: (emoticonPlus: Int, sales: Int) = (0, 0)
    func recursion(discounts: [Int]) {
        guard discounts.count < emoticons.count else {
            var partialResult: (emoticonPlus: Int, sales: Int) = (0, 0)
            for user in users {
                var sales = 0
                for index in 0..<discounts.count {
                    if discounts[index] >= user[0] {
                        sales += emoticons[index] * (100 - discounts[index]) / 100
                    }
                }
                if sales >= user[1] {
                    partialResult.emoticonPlus += 1
                } else {
                    partialResult.sales += sales
                }
            }
            if partialResult > result {
                result = partialResult
            }
            return
        }
        for discount in [10, 20, 30, 40] {
            recursion(discounts: discounts + [discount])
        }
    }
    recursion(discounts: [])
    return [result.emoticonPlus, result.sales]
}
