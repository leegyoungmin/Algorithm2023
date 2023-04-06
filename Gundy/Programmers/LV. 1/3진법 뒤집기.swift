func solution(_ n:Int) -> Int {
    let ternary: String = String(n, radix: 3)
    return Int(String(ternary.reversed()), radix: 3)!
}
