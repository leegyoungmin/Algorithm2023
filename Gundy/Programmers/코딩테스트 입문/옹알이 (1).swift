enum Bab: String {
    case aya
    case ye
    case woo
    case ma
}

func solution(_ babbling:[String]) -> Int {
    var result: Int = 0
    for babble in babbling {
        var text: String = ""
        for character in babble {
            text += String(character)
            if let _ = Bab(rawValue: text) {
                text = ""
            } else if text.count > 3 {
                break
            }
        }
        if text.isEmpty {
            result += 1
        }
    }
    return result
}
