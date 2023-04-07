import Foundation

extension Array where Element == Int {
    func validate(for number: Int) -> Bool {
        for element in self {
            if number % element == 0 {
                return false
            }
            if Double(element) > sqrt(Double(number)) {
                return true
            }
        }
        return true
    }
}

func solution(_ n:Int) -> Int {
    var numbers: [Int] = [3]
    guard n > 4 else { return n == 2 ? 1 : 2 }
    for number in stride(from: 5, through: n, by: 2) {
        if numbers.validate(for: number) {
            numbers.append(number)
        }
    }
    return numbers.count + 1
}
