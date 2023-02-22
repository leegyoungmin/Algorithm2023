// 13300. 방배정

import Foundation

let studentArr = readLine()!.components(separatedBy: " ")
let totalStudent = Int(studentArr[0])!
let fullCount = Int(studentArr[1])!

var capacity = Array(repeating: Array(repeating: 0, count: 2), count: 6)
var roomCount = 0

for _ in 1...totalStudent {
    let student = readLine()!.components(separatedBy: " ").map { Int($0)! }

    capacity[student[1]-1][student[0]] += 1
}

for i in 0..<capacity.count {
    // 남자방 개수
    if capacity[i][0] % fullCount == 0 {
        roomCount += capacity[i][0] / fullCount
    } else {
        roomCount += capacity[i][0] / fullCount + 1
    }

    // 여자방 개수
    if capacity[i][1] % fullCount == 0 {
        roomCount += capacity[i][1] / fullCount
    } else {
        roomCount += capacity[i][1] / fullCount + 1
    }
}

print(roomCount)
