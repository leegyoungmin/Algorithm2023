func solution(_ word:String) -> Int {
    let vowels = ["U", "O", "I", "E", "A"]
    var stack = vowels
    var words = [String: Int]()
    while stack.isEmpty == false,
          words[word] == nil {
        let word = stack.removeLast()
        words[word] = words.count + 1
        guard word.count < 5 else {
            continue
        }
        for vowel in vowels {
            stack.append(word + vowel)
        }
    }
    return words[word]!
}
