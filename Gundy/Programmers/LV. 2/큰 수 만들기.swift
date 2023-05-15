func solution(_ number:String, _ k:Int) -> String {
    var result = [String]()
    let numbers = number.map({ String($0) })
    var index = 0
    var skip = 0
    while skip < k,
          index < numbers.count {
        guard result.isEmpty == false else {
            result.append(numbers[index])
            index += 1
            continue
        }
        if numbers[index] > result.last! {
            while result.isEmpty == false,
                  numbers[index] > result.last!,
                  skip < k {
                result.removeLast()
                skip += 1
            }
            result.append(numbers[index])
            index += 1
        } else {
            result.append(numbers[index])
            index += 1
        }
    }
    if index < numbers.count {
        result += numbers[index..<numbers.count]
    }
    if skip < k {
        result = Array(result[0..<result.count - (k - skip)])
    }
    return result.joined()
}
