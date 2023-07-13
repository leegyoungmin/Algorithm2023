import Foundation

func solution(_ numbers:String) -> Int {
    let numbers = numbers.map(String.init)
    var joinedNumbers = Set<Int>()
    var result = 0
    func recursion(_ number: String, indices: Set<Int>) {
        guard indices.count < numbers.count else {
            return
        }
        for index in 0..<numbers.count {
            guard indices.contains(index) == false else {
                continue
            }
            let number = number + numbers[index]
            joinedNumbers.insert(Int(number)!)
            recursion(number, indices: indices.union([index]))
        }
    }
    recursion("", indices: [])
    func validate(_ number: Int) -> Bool {
        guard number > 3 else {
            return number > 1 ? true : false
        }
        var divisor = 2
        while divisor <= Int(sqrt(Double(number))) {
            guard number % divisor != 0 else {
                return false
            }
            divisor += 1
        }
        return true
    }
    for number in joinedNumbers {
        if validate(number) {
            result += 1
        }
    }
    return result
}
