func solution(_ M:Int, _ N:Int) -> Int {
    let shortSide: Int = M < N ? M : N
    let longSide: Int = M + N - shortSide
    var result = shortSide - 1
    for _ in 1...shortSide {
        result += longSide - 1
    }
    return result
}
