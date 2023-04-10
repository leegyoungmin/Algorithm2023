func solution(_ str1:String, _ str2:String) -> Int {
    var firstList: [String] = makeList(from: str1.lowercased()).sorted()
    var secondList: [String] = makeList(from: str2.lowercased()).sorted()
    var union: [String] = []
    var intersection: [String] = []
    while firstList.isEmpty == false,
          secondList.isEmpty == false {
        let text: String = firstList.removeLast()
        if text > secondList.last! {
            union.append(text)
        } else if text < secondList.last! {
            firstList.append(text)
            union.append(secondList.removeLast())
        } else {
            union.append(text)
            intersection.append(text)
            secondList.removeLast()
        }
    }
    if firstList.isEmpty == false {
        union += firstList
    }
    if secondList.isEmpty == false {
        union += secondList
    }
    guard intersection.count != union.count else { return 65536 }
    return Int(Double(intersection.count) / Double(union.count) * 65536)
}

func makeList(from text: String) -> [String] {
    let text: [Character] = text.map({ $0 })
    var result: [String] = []
    for index in 0..<text.count - 1 {
        guard text[index].isLowercase,
              text[index + 1].isLowercase else { continue }
        result.append(String(text[index]) + String(text[index + 1]))
    }
    return result
}
