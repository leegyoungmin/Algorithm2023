func solution(_ s:String, _ skip:String, _ index:Int) -> String {
    let texts: [Character] = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
    var indexList: [Character : Int] = [:]

    for text in texts {
        indexList[text] = indexList.count
    }
    var result: String = ""
    for text in s {
        var textIndex = indexList[text]!
        var count: Int = 0
        while count < index {
            textIndex += 1
            if skip.contains(texts[textIndex % 26]) == false {
                count += 1
            }
        }
        result += String(texts[textIndex % 26])
    }
    return result
}
