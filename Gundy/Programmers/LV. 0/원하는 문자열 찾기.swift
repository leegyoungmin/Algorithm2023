func solution(_ myString:String, _ pat:String) -> Int {
    let target = myString.lowercased()
    let sub = pat.lowercased()
    return target.contains(sub) ? 1 : 0
}
