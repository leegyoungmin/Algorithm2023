func solution(_ lines:[[Int]]) -> Int {
    let area: [Int] = lines.flatMap({ $0 }).sorted()
    var result: Int = 0
    for zone in area.first!..<area.last! {
        var count: Int = 0
        lines.forEach {
            if $0.first!...$0.last! ~= zone,
               $0.first!...$0.last! ~= zone + 1 {
                count += 1
            }
        }
        if count > 1 {
            result += 1
        }
    }
    return result
}
