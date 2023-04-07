func solution(_ a:Int, _ b:Int) -> String {
    let numberOfDays: Int = makeNumberOfDays(a, b)
    switch numberOfDays % 7 {
    case 1:
        return "FRI"
    case 2:
        return "SAT"
    case 3:
        return "SUN"
    case 4:
        return "MON"
    case 5:
        return "TUE"
    case 6:
        return "WED"
    default:
        return "THU"
    }
}

func makeNumberOfDays(_ month: Int, _ day: Int) -> Int {
    let months: [Int] = [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    print(months.reduce(0, +))
    var result: Int = 0
    guard month > 1 else { return day }
    for index in 0..<month - 1 {
        result += months[index]
    }
    return result + day
}
