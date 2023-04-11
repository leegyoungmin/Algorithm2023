func solution(_ word:String) -> Int {
    var words: [String : Int] = [:]
    var wordList: [String] = []
    var needVisit: [[String]] = []
    for word in ["A", "E", "I", "O", "U"] {
        needVisit.append([word, ""])
    }
    while needVisit.isEmpty == false {
        var now: [String] = needVisit.removeLast()
        if now.last == "" {
            wordList.append(now.joined())
            now.removeLast()
        }
        if now.count == 5 {
            continue
        }
        for word in ["A", "E", "I", "O", "U"] {
            needVisit.append(now + [word, ""])
        }
    }
    for word in wordList.sorted() {
        words[word] = words.count + 1
    }
    return words[word]!
}
