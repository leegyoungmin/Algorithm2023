extension String {
    func isFasterThan(_ time: Self) -> Bool {
        let lhs = split(separator: ":").compactMap { Int($0) }
        let rhs = time.split(separator: ":").compactMap { Int($0) }
        return lhs[0] < rhs[0] || lhs[0] == rhs[0] && lhs[1] <= rhs[1]
    }

    func nextTime() -> Self {
        let time = split(separator: ":").compactMap { Int($0) }
        let hour = time[0]
        let minute = time[1]
        return minute < 50 ? "\(hour):\(minute + 10)" : "\(hour + 1):\(minute - 50)"
    }
}

func solution(_ book_time:[[String]]) -> Int {
    guard book_time.count > 1 else {
        return 1
    }
    let bookTime = book_time.sorted { $0[0].isFasterThan($1[0]) }
    var rooms = [bookTime[0][1].nextTime()]
    for timeIndex in 1..<bookTime.count {
        var isCheckedIn = false
        for roomIndex in 0..<rooms.count {
            guard rooms[roomIndex].isFasterThan(bookTime[timeIndex][0]) else {
                continue
            }
            rooms[roomIndex] = bookTime[timeIndex][1].nextTime()
            isCheckedIn = true
            break
        }
        guard isCheckedIn == false else {
            continue
        }
        rooms.append(bookTime[timeIndex][1].nextTime())
    }
    return rooms.count
}
