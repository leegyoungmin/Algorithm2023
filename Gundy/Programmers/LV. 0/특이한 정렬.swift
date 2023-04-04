func solution(_ numlist:[Int], _ n:Int) -> [Int] {
    var lowNumbers: [Int] = numlist.filter({ $0 < n }).sorted()
    var highNumbers: [Int] = numlist.filter({ $0 > n }).sorted(by: >)
    var result: [Int] = numlist.contains(n) ? [n] : []
    while lowNumbers.isEmpty == false, highNumbers.isEmpty == false {
        if n - lowNumbers.last! >= highNumbers.last! - n {
            result.append(highNumbers.removeLast())
        } else {
            result.append(lowNumbers.removeLast())
        }
    }
    while lowNumbers.isEmpty == false {
        result.append(lowNumbers.removeLast())
    }
    while highNumbers.isEmpty == false {
        result.append(highNumbers.removeLast())
    }
    return result
}
