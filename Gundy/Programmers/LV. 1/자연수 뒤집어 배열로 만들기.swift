func solution(_ n:Int64) -> [Int] {
    return n.description.reversed().compactMap({ Int(String($0)) })
}
