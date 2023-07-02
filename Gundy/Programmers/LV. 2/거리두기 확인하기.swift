extension Array {
    subscript(safe index: Index) -> Element? {
        guard index < count,
              index >= 0 else {
            return nil
        }
        return self[index]
    }
}

func solution(_ places:[[String]]) -> [Int] {
    var result = [Int]()
    let needCheck = Place.allCases
    var places = places.map { $0.map { $0.map(String.init) } }
loop: for place in places {
    for row in 0..<place.count {
        for column in 0..<place[row].count {
            if place[row][column] == "P" {
                for checkPoint in needCheck {
                    let point = checkPoint.point
                    let y = row + point.row
                    let x = column + point.column
                    guard let target = place[safe: y]?[safe: x] else {
                        continue
                    }
                    if target == "P" {
                        guard let partitionPoints = checkPoint.partitionPoint else {
                            result.append(0)
                            continue loop
                        }
                        for partitionPoint in partitionPoints {
                            let partition = partitionPoint.point
                            let dy = row + partition.row
                            let dx = column + partition.column
                            let target = place[dy][dx]
                            guard target == "X" else {
                                result.append(0)
                                continue loop
                            }
                        }
                    }
                }
            }
        }
    }
    result.append(1)
}
    return result
}

enum Place: CaseIterable {
    case doubleUp
    case leftUp
    case up
    case rightUp
    case doubleLeft
    case left
    case right
    case doubleRight
    case leftDown
    case down
    case rightDown
    case doubleDown

    var point: (row: Int, column: Int) {
        switch self {
        case .doubleUp:
            return (-2, 0)
        case .leftUp:
            return (-1, -1)
        case .up:
            return (-1, 0)
        case .rightUp:
            return (-1, 1)
        case .doubleLeft:
            return (0, -2)
        case .left:
            return (0, -1)
        case .right:
            return (0, 1)
        case .doubleRight:
            return (0, 2)
        case .leftDown:
            return (1, -1)
        case .down:
            return (1, 0)
        case .rightDown:
            return (1, 1)
        case .doubleDown:
            return (2, 0)
        }
    }

    var partitionPoint: [Place]? {
        switch self {
        case .doubleUp:
            return [.up]
        case .leftUp:
            return [.left, .up]
        case .rightUp:
            return [.right, .up]
        case .doubleLeft:
            return [.left]
        case .doubleRight:
            return [.right]
        case .leftDown:
            return [.left, .down]
        case .rightDown:
            return [.right, .down]
        case .doubleDown:
            return [.down]
        default:
            return nil
        }
    }
}
