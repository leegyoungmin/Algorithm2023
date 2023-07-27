func solution(_ a:Int, _ b:Int) -> Int {
    switch (a % 2, b % 2) {
    case (1, 1):
        return a * a + b * b
    case (0, 0):
        return abs(a - b)
    default:
        return 2 * (a + b)
    }
}
