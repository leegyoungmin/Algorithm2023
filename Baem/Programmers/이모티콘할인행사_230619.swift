func solution(_ users:[[Int]], _ emoticons:[Int]) -> [Int] {
    let percents = [10, 20, 30, 40]
    var result = [(Int, Int)]()
    
    func judge(_ discountPercents: [Int]) {
        var total = (0, 0)
        
        for user in users {
            let purposePercent = user[0]
            let spendPrice = user[1]
            var userPrice = 0
            
            for (index, percent) in discountPercents.enumerated() {
                if percent >= purposePercent {
                    userPrice += emoticons[index] * (100 - percent) / 100
                }
            }
            
            if userPrice >= spendPrice {
                total.0 += 1
            } else {
                total.1 += userPrice
            }
        }
        
        result.append(total)
    }
    
    var emoticonPercent = Array(repeating: 0, count: emoticons.count)
    
    func recursion(_ emoticonIndex: Int) {
        if emoticonIndex >= emoticons.count {
            judge(emoticonPercent)
            
            return
        }
        
        for percent in percents {
            emoticonPercent[emoticonIndex] = percent
            
            recursion(emoticonIndex + 1)
        }
    }
    
    recursion(0)
    
    let resultValue = result.sorted { $0 > $1 }.first!
    
    return [resultValue.0 ,resultValue.1]
}
