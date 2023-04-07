extension String {
    func toInt() -> Int? {
        switch self {
        case "zero":
            return 0
        case "one":
            return 1
        case "two":
            return 2
        case "three":
            return 3
        case "four":
            return 4
        case "five":
            return 5
        case "six":
            return 6
        case "seven":
            return 7
        case "eight":
            return 8
        case "nine":
            return 9
        default:
            return nil
        }
    }
}

func solution(_ s:String) -> Int {
    var result: String = ""
    var input: [String] = s.reversed().map({ String($0) })
    var temporaryValue: String = ""
    while input.isEmpty == false {
        temporaryValue += input.removeLast()
        if let number = temporaryValue.toInt() {
            result += number.description
            temporaryValue = ""
        } else if let number = Int(temporaryValue) {
            result += number.description
            temporaryValue = ""
        }
    }
    return Int(result)!
}
