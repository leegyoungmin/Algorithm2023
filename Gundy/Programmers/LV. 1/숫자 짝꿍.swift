func solution(_ X:String, _ Y:String) -> String {
    var x: [String : Int] = [:]
    var y: [String : Int] = [:]
    var numbers: [String] = []
    for text in X {
        x[String(text), default: 0] += 1
    }
    for text in Y {
        y[String(text), default: 0] += 1
    }
    for number in stride(from: 9, through: 0, by: -1).map({ String($0) }) {
        if let xNumber = x[number],
           let yNumber = y[number] {
            let count: Int = min(xNumber, yNumber)
            for _ in 1...count {
                numbers.append(number)
            }
        }
    }
    guard numbers.isEmpty == false else { return "-1" }
    guard numbers.first != "0" else { return "0" }
    return numbers.joined()
}
