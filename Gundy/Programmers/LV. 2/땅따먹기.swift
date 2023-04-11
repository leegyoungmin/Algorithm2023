func solution(_ land:[[Int]]) -> Int {
    var land: [[Int]] = land
    for row in 1..<land.count {
        land[row][0] += max(land[row - 1][1], land[row - 1][2], land[row - 1][3])
        land[row][1] += max(land[row - 1][0], land[row - 1][2], land[row - 1][3])
        land[row][2] += max(land[row - 1][0], land[row - 1][1], land[row - 1][3])
        land[row][3] += max(land[row - 1][0], land[row - 1][1], land[row - 1][2])
    }
    return land.last!.sorted().last!
}
