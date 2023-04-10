func solution(_ n:Int, _ words:[String]) -> [Int] {
    var stack: [String] = []
    for word in words {
        guard word.count > 1 else { break }
        if stack.isEmpty {
            stack.append(word)
            continue
        }
        guard stack.contains(word) == false else { break }
        guard stack.last?.last == word.first else { break }
        stack.append(word)
    }
    guard stack.count < words.count else { return [0, 0] }
    var number: Int = (stack.count + 1) % n
    if number == 0 {
        number = n
    }
    var time: Int = (stack.count + n) / n
    return [number, time]
}
