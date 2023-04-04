func solution(_ A:String, _ B:String) -> Int {
    guard A.sorted() == B.sorted() else { return -1 }
    var count: Int = 0
    var texts: [String] = A.map({ String($0) })
    while texts.joined() != B {
        if count == A.count {
            return -1
        }
        let text: String = texts.removeLast()
        texts = [text] + texts
        count += 1
    }
    return count
}
