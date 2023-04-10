func solution(_ msg:String) -> [Int] {
    var dictionary: [String : Int] = [:]
    for text in "ABCDEFGHIJKLMNOPQRSTUVWXYZ".map({ String($0) }) {
        dictionary[text] = dictionary.count + 1
    }
    var result: [Int] = []
    var message: [String] = msg.map({ String($0) }).reversed()
    while message.isEmpty == false {
        var text: String = message.removeLast()
        var current: Int = dictionary[text]!
        while message.isEmpty == false {
            text += message.last!
            guard let number = dictionary[text] else {
                dictionary[text] = dictionary.count + 1
                break
            }
            current = number
            message.removeLast()
        }
        result.append(current)
    }
    return result
}
