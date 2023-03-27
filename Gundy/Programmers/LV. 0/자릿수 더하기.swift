func solution(_ n:Int) -> Int {
    return n.description.compactMap({ Int(String($0)) }).reduce(0, +)
}
