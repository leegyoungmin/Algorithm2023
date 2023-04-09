extension Array {
    subscript(safe index: Int) -> Element? {
        guard index >= 0,
              index < count else { return nil }
        return self[index]
    }
}

func solution(_ keymap:[String], _ targets:[String]) -> [Int] {
    let keyMap: [[Character]] = keymap.sorted(by: { $0.count > $1.count }).map({ $0.map({ $0 }) })
    return targets.map({ mapping(from: keyMap, for: $0) })
}

func mapping(from keyMap: [[Character]], for target: String) -> Int {
    var result: Int = 0
    for text in target {
        var index: Int = 0
        var isValid: Bool = false
        while isValid == false,
              index < keyMap.first!.count {
            for key in keyMap {
                guard let value = key[safe: index] else {
                    break
                }
                if value == text {
                    isValid = true
                    break
                }
            }
            index += 1
        }
        guard isValid else { return -1 }
        result += index
    }
    return result
}
