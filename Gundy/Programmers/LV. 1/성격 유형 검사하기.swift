var chart: [Int] = Array(repeating: 0, count: 4)

func solution(_ survey:[String], _ choices:[Int]) -> String {
    for (type, choice) in zip(survey, choices) {
        makePoint(for: type, choice)
    }
    var result: String = ""
    for (character, index) in zip(["RT", "FC", "MJ", "AN"], 0...3) {
        switch chart[index] {
        case 1...:
            result += String(character.last!)
        case ..<0:
            result += String(character.first!)
        default:
            result += String(character.sorted().first!)
        }
    }
    return result
}

func makePoint(for type: String, _ choice: Int) {
    var point: Int = abs(choice - 4)
    var isPositive: Bool = choice > 4
    var index: Int = 0
    switch type {
    case "FC", "CF":
        if type == "CF" {
            isPositive.toggle()
        }
        index = 1
    case "MJ", "JM":
        if type == "JM" {
            isPositive.toggle()
        }
        index = 2
    case "AN", "NA":
        if type == "NA" {
            isPositive.toggle()
        }
        index = 3
    default:
        if type == "TR" {
            isPositive.toggle()
        }
        break
    }
    if isPositive {
        chart[index] += point
    } else {
        chart[index] -= point
    }
}
