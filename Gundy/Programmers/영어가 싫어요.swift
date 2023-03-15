enum Number: String {
    case zero = "zero"
    case one = "one"
    case two = "two"
    case three = "three"
    case four = "four"
    case five = "five"
    case six = "six"
    case seven = "seven"
    case eight = "eight"
    case nine = "nine"
    
    var value: Int {
        switch self {
        case .zero:
            return 0
        case .one:
            return 1
        case .two:
            return 2
        case .three:
            return 3
        case .four:
            return 4
        case .five:
            return 5
        case .six:
            return 6
        case .seven:
            return 7
        case .eight:
            return 8
        case .nine:
            return 9
        }
    }
}

func solution(_ numbers:String) -> Int64 {
    var characters: [String] = numbers.map { String($0) }.reversed()
    var text: String = ""
    var result: String = ""
    
    while characters.isEmpty == false {
        text += characters.removeLast()
        if let number = Number(rawValue: text) {
            result += String(number.value)
            text = ""
        }
    }
    
    return Int64(result)!
}
