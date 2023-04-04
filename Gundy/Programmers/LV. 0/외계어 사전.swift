func solution(_ spell:[String], _ dic:[String]) -> Int {
    for word in dic {
        guard word.count == spell.count else { continue}
        var isValid: Bool = true
        var texts: Set<Character> = []
        word.forEach({ texts.insert($0) })
        guard texts.count == word.count else { continue }
        for text in texts {
            if spell.contains(String(text)) == false {
                isValid = false
                break
            }
        }
        if isValid {
            return 1
        }
    }
    return 2
}
