import Foundation

func solution(_ numbers:String) -> Int {
    let numbers: [String] = numbers.map({ String($0) })
    var numberList: Set<Int> = []
    var needVisit: [(value: String, index: [Int])] = []
    for index in 0..<numbers.count {
        needVisit.append((numbers[index], [index]))
    }
    while needVisit.isEmpty == false {
        let now = needVisit.removeLast()
        numberList.insert(Int(now.value)!)
        guard now.value.count < numbers.count else { continue }
        for index in 0..<numbers.count {
            if now.index.contains(index) == false {
                needVisit.append((now.value + numbers[index], now.index + [index]))
            }
        }
    }
    return numberList.filter({ validate($0) }).count
}

func validate(_ number: Int) -> Bool {
    guard number > 3 else { return number < 2 ? false : true }
    for divisor in 2... {
        if number % divisor == 0 {
            return false
        }
        if Double(divisor) > sqrt(Double(number)) {
            break
        }
    }
    return true
}
