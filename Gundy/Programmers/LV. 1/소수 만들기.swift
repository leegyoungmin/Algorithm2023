import Foundation

func solution(_ nums:[Int]) -> Int {
    var result: Int = 0

    for first in 0..<nums.count - 2 {
        for second in first + 1..<nums.count - 1 {
            for third in second + 1..<nums.count {
                if validate(nums[first] + nums[second] + nums[third]) {
                    result += 1
                }
            }
        }
    }

    return result
}

func validate(_ number: Int) -> Bool {
    guard number % 2 == 1 else { return false }
    for divisor in stride(from: 3, through: number, by: 2) {
        if number % divisor == 0 {
            return false
        }
        if Double(divisor) > sqrt(Double(number)) {
            break
        }
    }
    return true
}
