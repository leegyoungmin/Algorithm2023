func solution(_ n:Int64) -> Int64 {
    return Int64(n.description.compactMap({ Int(String($0)) }).sorted(by: >).map({ String($0) }).joined())!
}
