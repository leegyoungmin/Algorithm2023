func solution() {
    let _ = readLine()
    var towers: [Int] = readLine()!.split(separator: " ").compactMap({ Int($0) })
    var result: [String] = Array(repeating: "0", count: towers.count)
    var stack: [(Int, Int)] = []
    var index = towers.count
    while towers.isEmpty == false {
        index -= 1
        let value = towers.removeLast()
        while stack.isEmpty == false {
            if stack.last!.0 < value {
                result[stack.removeLast().1] = String(index + 1)
            } else {
                break
            }
        }
        stack.append((value, index))
    }
    print(result.joined(separator: " "))
}

solution()
