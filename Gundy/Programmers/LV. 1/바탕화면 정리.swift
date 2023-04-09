func solution(_ wallpaper:[String]) -> [Int] {
    var minX: Int = wallpaper[0].count
    var maxX: Int = 0
    var minY: Int = wallpaper.count
    var maxY: Int = 0
    for y in 0..<wallpaper.count {
        let row: [String] = wallpaper[y].map({ String($0) })
        for x in 0..<row.count {
            if row[x] == "#" {
                if x < minX {
                    minX = x
                }
                if x > maxX {
                    maxX = x
                }
                if y < minY {
                    minY = y
                }
                if y > maxY {
                    maxY = y
                }
            }
        }
    }
    return [minY, minX, maxY + 1, maxX + 1]
}
