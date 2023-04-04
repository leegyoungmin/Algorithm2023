func solution(_ before:String, _ after:String) -> Int {
    let beforeDictionary = before.reduce([Character: Int]()) { partialResult, text in
        var result = partialResult
        result[text, default: 0] += 1
        return result
    }
    let afterDictiondary = after.reduce([Character: Int]()) { partialResult, text in
        var result = partialResult
        result[text, default: 0] += 1
        return result
    }
    return beforeDictionary == afterDictiondary ? 1 : 0
}
