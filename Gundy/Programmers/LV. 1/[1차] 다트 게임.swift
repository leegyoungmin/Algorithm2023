func solution(_ dartResult:String) -> Int {
    var result: [Int] = []
    var points: String = String(dartResult.reversed())
    while points.isEmpty == false {
        var text: String = ""
        for _ in 1...2 {
            text += String(points.removeLast())
        }
        while points.isEmpty == false,
              Int(String(points.last!)) == nil {
            text += String(points.removeLast())
        }
        let point = makePoint(from: text)
        if point.option == 2,
           let last = result.popLast() {
            result.append(last * 2)
        }
        result.append(point.point * point.option)
    }
    return result.reduce(0, +)
}

func makePoint(from text: String) -> (point: Int, option: Int) {
    var text: String = String(text.reversed())
    var point: String = ""
    while Int(String(text.last!)) != nil {
        point += String(text.removeLast())
    }
    var result: Int = Int(point)!
    switch text.removeLast() {
    case "D":
        result *= result
    case "T":
        result *= result * result
    default:
        break
    }
    var option: Int = 1
    if text.isEmpty == false {
        switch text {
        case "*":
            option = 2
        default:
            option = -1
        }
    }
    return (result, option)
}
