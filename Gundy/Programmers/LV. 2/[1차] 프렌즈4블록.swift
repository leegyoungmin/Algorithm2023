extension Array {
    subscript(safe index: Index) -> Element? {
        guard index >= 0 && index < count else { return nil }
        return self[index]
    }
}

func solution(_ m:Int, _ n:Int, _ board:[String]) -> Int {
    var screen: [[String]] = Array(repeating: [], count: m)
    for index in 0..<board.count {
        screen[index] = board[index].map({ String($0) })
    }
    var removeIndex: Set<[Int]> = []
    var isChanged: Bool = true
    let axisX: [[Int]] = [[-1, -1, 0], [0, 1, 1], [1, 1, 0], [0, -1, -1]]
    let axisY: [[Int]] = [[0, -1, -1], [-1, -1, 0], [0, 1, 1], [1, 1, 0]]
    while isChanged {
        isChanged = false
        for y in 0..<m {
            for x in 0..<n {
                let text: String = screen[y][x]
                guard text != " ",
                      text != "" else { continue }
                for (dxList, dyList) in zip(axisX, axisY) {
                    var count: Int = 0
                    for (dx, dy) in zip(dxList, dyList) {
                        if screen[safe: y + dy]?[safe: x + dx] == text {
                            count += 1
                        }
                    }
                    if count == 3 {
                        isChanged = true
                        removeIndex.insert([y, x])
                        for (dx, dy) in zip(dxList, dyList) {
                            removeIndex.insert([y + dy, x + dx])
                        }
                    }
                }
            }
        }
        while removeIndex.isEmpty == false {
            let index: [Int] = removeIndex.removeFirst()
            let y: Int = index[0]
            let x: Int = index[1]
            screen[y][x] = " "
        }
        for index in 0..<n {
            var text: String = ""
            for row in 0..<m {
                if screen[row][index] != " " {
                    text += screen[row][index]
                }
            }
            let count: Int = text.count
            for row in stride(from: m - 1, through: m - count, by: -1) {
                screen[row][index] = String(text.removeLast())
            }
            for row in 0..<m - count {
                screen[row][index] = " "
            }
        }
    }
    return screen.map({ $0.filter({ $0 == " " }).count }).reduce(0, +)
}
