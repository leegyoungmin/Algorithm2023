func solution(_ k:Int, _ dungeons:[[Int]]) -> Int {
    var result: [Int] = []
    var needVisit: [(Int, [Int], Int)] = []
    for index in 0..<dungeons.count {
        needVisit.append((k, [index], 1))
    }
    while needVisit.isEmpty == false {
        let (fatigue, indexList, count) = needVisit.removeLast()
        let dungeon = dungeons[indexList.last!]
        guard fatigue >= dungeon[0] else {
            continue
        }
        result.append(count)
        let newFatigue: Int = fatigue - dungeon[1]
        for index in 0..<dungeons.count {
            guard indexList.contains(index) == false else { continue }
            needVisit.append((newFatigue, indexList + [index], count + 1))
        }
    }
    return result.sorted(by: >).first!
}
