func solution(_ x:Int) -> Bool {
    let number: Int = x.description.compactMap({ Int(String($0)) }).reduce(0, +)
    return x % number == 0
}
