func solution(_ n:Int, _ words:[String]) -> [Int] {
    var list = [String]()
    for word in words {
        guard list.contains(word) == false,
              list.isEmpty || list.last?.last == word.first else {
            return [(list.count % n) + 1, (list.count / n) + 1]
        }
        list.append(word)
    }
    return [0, 0]
}
