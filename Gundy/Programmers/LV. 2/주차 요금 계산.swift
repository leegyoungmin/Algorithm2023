func solution(_ fees:[Int], _ records:[String]) -> [Int] {
    var inTimeList: [String : String] = [:]
    var totalTime: [String : Int] = [:]
    for record in records {
        let record: [String] = record.split(separator: " ").map({ String($0) })
        switch record[2] {
        case "IN":
            inTimeList[record[1]] = record[0]
        default:
            let inTime: [Int] = inTimeList[record[1]]!.split(separator: ":").compactMap({ Int($0) })
            inTimeList[record[1]] = nil
            let outTime: [Int] = record[0].split(separator: ":").compactMap({ Int($0) })
            totalTime[record[1], default: 0] += check(time: (outTime[0], outTime[1]), since: (inTime[0], inTime[1]))
        }
    }
    for carNumber in inTimeList.keys {
        let inTime: [Int] = inTimeList[carNumber]!.split(separator: ":").compactMap({ Int($0) })
        totalTime[carNumber, default: 0] += check(time: (23, 59), since: (inTime[0], inTime[1]))
    }
    return totalTime.keys.sorted().map({ pay(for: totalTime[$0]!, defaultService: (fees[0], fees[1]), extra: (fees[2], fees[3])) })
}

func divide(numerator: Int, denominator: Int) -> Int {
    let result: Int = numerator / denominator
    return numerator % denominator == 0 ? result : result + 1
}

func check(time: (hour: Int, minute: Int), since origin: (hour: Int, minute: Int)) -> Int {
    let hours: Int = (time.hour - origin.hour) * 60
    return hours + time.minute - origin.minute
}

func pay(for time: Int, defaultService: (time: Int, price: Int), extra: (time: Int, price: Int)) -> Int {
    guard time > defaultService.time else { return defaultService.price }
    var result: Int = defaultService.price
    return result + (divide(numerator: time - defaultService.time, denominator: extra.time) * extra.price)
}
