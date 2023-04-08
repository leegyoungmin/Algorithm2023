extension Array {
    subscript(safe index: Int) -> Element? {
        guard self.count > index && index >= 0 else {
            return nil
        }
        return self[index]
    }
}

func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
    var uniformList: [Bool] = Array(repeating: true, count: n)
    let losted: [Int] = lost.filter({ reserve.contains($0) == false })
    let reserved: [Int] = reserve.filter({ lost.contains($0) == false }).sorted()
    for number in losted {
        uniformList[number - 1] = false
    }
    for number in reserved {
        let index: Int = number - 1
        if uniformList[safe: index - 1] == false {
            uniformList[index - 1] = true
            continue
        }
        if uniformList[safe: index + 1] == false {
            uniformList[index + 1] = true
        }
    }
    return uniformList.filter({ $0 }).count
}
