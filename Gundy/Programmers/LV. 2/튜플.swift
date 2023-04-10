func solution(_ s:String) -> [Int] {
    var stack: [[Int]] = []
    var temporary: String = ""
    for text in s {
        switch text {
        case "}":
            let numbers: [Int] = temporary.split(separator: " ").compactMap({ Int($0) })
            guard numbers.isEmpty == false else { continue }
            stack.append(numbers)
            temporary = ""
        case "{":
            continue
        case ",":
            temporary += " "
        default:
            temporary += String(text)
        }
    }
    let numbersList: [[Int]] = stack.sorted(by: { $0.count < $1.count })
    var result: [Int] = []
    var resultCount: [Int : Int] = [:]
    for numbers in numbersList {
        var count: [Int : Int] = [:]
        for number in numbers {
            count[number, default: 0] += 1
        }
        for number in Set(numbers) {
            if count[number] != resultCount[number] {
                result.append(number)
                resultCount[number, default: 0] += 1
                break
            }
        }
    }
    return result
}
