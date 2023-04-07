extension String {
    func makePartial(for number: Int) -> [String] {
        let text: [String] = self.map({ String($0) })
        var result: [String] = []
        for index in 0...text.count - number {
            var temporaryValue: String = ""
            for delta in 0..<number {
                temporaryValue += text[index + delta]
            }
            result.append(temporaryValue)
        }
        return result
    }
}

func solution(_ t:String, _ p:String) -> Int {
    let numbers: [Int] = t.makePartial(for: p.count).compactMap({ Int($0) })
    var result: Int = 0
    let target: Int = Int(p)!
    for number in numbers {
        if number <= target {
            result += 1
        }
    }
    return result
}
