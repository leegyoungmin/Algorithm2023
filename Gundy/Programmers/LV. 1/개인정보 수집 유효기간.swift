typealias Day = (year: Int, month: Int, day: Int)

func solution(_ today:String, _ terms:[String], _ privacies:[String]) -> [Int] {
    let today = toDay(of: today)
    func isOverDue(target day: Day, term month: Int) -> Bool {
        var target = day
        target.day -= 1
        if target.day == 0 {
            target.month -= 1
            target.day = 28
        }
        target.month += month
        if target.month > 12 {
            target.year += target.month / 12
            target.month %= 12
        }
        if target.month == 0 {
            target.month = 12
            target.year -= 1
        }
        return target < today
    }
    var counter = [String: Int]()
    for term in terms {
        let term = term.split(separator: " ").map(String.init)
        counter[term[0]] = Int(term[1])
    }
    var index = 0
    var result = [Int]()
    for privacy in privacies {
        index += 1
        let privacy = privacy.split(separator: " ").map(String.init)
        if isOverDue(target: toDay(of: privacy[0]), term: counter[privacy[1]]!) {
            result.append(index)
        }
    }
    return result
}

func toDay(of date: String) -> Day {
    let date = date.split(separator: ".").compactMap({ Int($0) })
    return (date[0], date[1], date[2])
}
