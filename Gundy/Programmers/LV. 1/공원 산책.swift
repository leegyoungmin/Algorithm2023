extension Array {
    subscript(safe index: Int) -> Element? {
        guard index >= 0,
              index < count else { return nil }
        return self[index]
    }
}

func solution(_ park:[String], _ routes:[String]) -> [Int] {
    let park: [[Character]] = park.map({ $0.map({ $0 }) })
    var current: (x: Int, y: Int) = (-1, -1)
    for y in 0..<park.count {
        let row: [Character] = park[y]
        for x in 0..<row.count {
            if row[x] == "S" {
                current = (x, y)
                break
            }
        }
        if current.x != -1 {
            break
        }
    }
    for route in routes {
        let command: [String] = route.split(separator: " ").map({ String($0) })
        let distace: Int = Int(command[1])!
        var isValid: Bool = true
        switch command[0] {
        case "E":
            for dx in stride(from: 1, through: distace, by: 1) {
                guard let point = park[current.y][safe: current.x + dx],
                      point != "X" else {
                    isValid = false
                    break
                }
            }
            if isValid {
                current = (current.x + distace, current.y)
            }
        case "W":
            for dx in stride(from: 1, through: distace, by: 1) {
                guard let point = park[current.y][safe: current.x - dx],
                      point != "X" else {
                    isValid = false
                    break
                }
            }
            if isValid {
                current = (current.x - distace, current.y)
            }
        case "S":
            for dy in stride(from: 1, through: distace, by: 1) {
                guard let point = park[safe: current.y + dy]?[current.x],
                      point != "X" else {
                    isValid = false
                    break
                }
            }
            if isValid {
                current = (current.x, current.y + distace)
            }
        default:
            for dy in stride(from: 1, through: distace, by: 1) {
                guard let point = park[safe: current.y - dy]?[current.x],
                      point != "X" else {
                    isValid = false
                    break
                }
            }
            if isValid {
                current = (current.x, current.y - distace)
            }
        }
    }
    return [current.y, current.x]
}
