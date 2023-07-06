func solution(_ id_list:[String], _ report:[String], _ k:Int) -> [Int] {
    var idIndex = [String : Int]()
    for id in id_list {
        idIndex[id] = idIndex.count
    }
    var count = [String: Int]()
    var blacklist = Set<String>()
    var reports = Array(repeating: Set<String>(), count: id_list.count)
    report.forEach {
        let users = $0.split(separator: " ").map(String.initㅋ)
        let index = idIndex[users[0]]!
        reports[index].insert(users[1])
    }
    for report in reports {
        report.forEach {
            count[$0, default: 0] += 1
            if count[$0]! >= k {
                blacklist.insert($0)
            }
        }
    }
    return reports.map({ $0.intersection(blacklist).count })
}
