func solution(_ sizes:[[Int]]) -> Int {
    var maximumLongSide: Int = 0
    var maximumShortSide: Int = 0
    for size in sizes {
        let longSide: Int = size[0] > size[1] ? size[0] : size[1]
        let shortSide: Int = size[0] + size[1] - longSide
        if longSide > maximumLongSide {
            maximumLongSide = longSide
        }
        if shortSide > maximumShortSide {
            maximumShortSide = shortSide
        }
    }
    return maximumLongSide * maximumShortSide
}
