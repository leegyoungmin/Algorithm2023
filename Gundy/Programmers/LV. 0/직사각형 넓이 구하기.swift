func solution(_ dots:[[Int]]) -> Int {
    let dots: [[Int]] = dots.sorted(by: { $0[0] < $1[0] })
    return abs(dots[0][1] - dots[1][1]) * abs(dots[0][0] - dots[2][0])
}
