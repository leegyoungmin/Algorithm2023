func solution(_ a:Int, _ b:Int) -> Int {
    let first = Int(String(a) + String(b))!
    let second = Int(String(b) + String(a))!
    return max(first, second)
}
