func solution(_ N:Int, _ stages:[Int]) -> [Int] {
    var stageList: [Int : Int] = [:]
    for stage in stages {
        stageList[stage, default: 0] += 1
    }
    var totalUsers: Int = stages.count
    var result: [(stage: Int, percentage: Double)] = []
    for stage in stride(from: 1, through: N, by: 1) {
        var percentage: Double = 0
        if let users = stageList[stage] {
            percentage = Double(users) / Double(totalUsers)
            totalUsers -= users
        }
        result.append((stage, percentage))
    }
    return result.sorted {
        if $0.percentage == $1.percentage {
            return $0.stage < $1.stage
        }
        return $0.percentage > $1.percentage
    }.map({ $0.stage })
}
