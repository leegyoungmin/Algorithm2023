func solution(_ sizes:[[Int]]) -> Int {
    var shortSide = 0
    var longSide = 0
    for size in sizes {
        let short = size.min()!
        let long = size.max()!
        if shortSide < short {
            shortSide = short
        }
        if longSide < long {
            longSide = long
        }
    }
    return shortSide * longSide
}
