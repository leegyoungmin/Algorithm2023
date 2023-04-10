import Foundation

func solution(_ n:Int, _ k:Int) -> Int {
    let numbers: [Int] = String(n, radix: k).split(separator: "0").compactMap({ Int(String($0)) })
    return numbers.filter({ validate(for: $0) }).count
}

func validate(for number: Int) -> Bool {
    guard number > 3 else { return number == 1 ? false : true }
    for divisor in 2... {
        guard Double(divisor) <= sqrt(Double(number)) else { return true }
        if number % divisor == 0 {
            break
        }
    }
    return false
}
