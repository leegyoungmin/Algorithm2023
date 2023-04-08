import Foundation

func solution(_ number:Int, _ limit:Int, _ power:Int) -> Int {
    let list = stride(from: 2, through: number, by: 1).map({ makePower(for: $0, limit: limit, power: power) })
    return list.reduce(1, +)
}

func makePower(for number: Int, limit: Int, power: Int) -> Int {
    let rootNumber: Double = sqrt(Double(number))
    let target: Int = Int(rootNumber)
    if rootNumber == Double(target) {
        var result: Int = 0
        for divisor in 1..<target {
            if number % divisor == 0 {
                result += 2
                if result >= limit {
                    return power
                }
            }
        }
        return result + 1
    }
    var result: Int = 0
    for divisor in 1...target {
        if number % divisor == 0 {
            result += 2
            if result > limit {
                return power
            }
        }
    }
    return result
}
