func solution(_ polynomial:String) -> String {
    let operands: [String] = polynomial.split(separator: " ").map({ String($0) }).filter({ $0 != "+" })
    var x: Int = 0
    var number: Int = 0
    for operand in operands {
        if let count = Int(operand) {
            number += count
            continue
        }
        if operand == "x" {
            x += 1
            continue
        }
        var text: String = operand
        text.removeLast()
        x += Int(text)!
    }
    var result: String = ""
    switch x {
    case 1:
        result = "x"
    case 2...:
        result = "\(x)x"
    default:
        break
    }
    if number > 0 {
        result += result.isEmpty ? "\(number)" : " + \(number)"
    }
    return result
}
