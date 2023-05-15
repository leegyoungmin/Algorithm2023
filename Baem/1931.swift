
let input = Int(readLine()!)!

var arrays = [(Int, Int)]()

for _ in 0..<input {
    let input = readLine()!.split(separator: " ").map{ Int($0)! }
    arrays.append((input[0], input[1]))
}

arrays.sort { first, second in
    if first.1 == second.1 {
        return first.0 < second.0
    } else {
        return first.1 < second.1
    }
}

print(arrays)

/*
 (1, 4),
 (3, 5),
 (0, 6),
 (5, 7),
 (3, 8),
 (5, 9),
 (6, 10),
 (8, 11),
 (8, 12),
 (2, 13),
 (12, 14)
 제일 빨리 끝나는거 찾기 += 1
 그 다음 현재 끝나는거 다음으로 빨리 끝나는 것 찾음 -> 만약 그게 위에 time 과 겹치면 다음으로 넘김
 
 */

var count = 0
var time = 0

for meeting in arrays {
    print(time)
    if time > meeting.1 {
        continue
    } else if time <= meeting.0 {
        count += 1
        time = meeting.1
        continue
    }
}

print(count)

/*
 12
 1 4
 3 5
 0 6
 5 7
 3 8
 5 9
 6 10
 8 11
 8 12
 2 13
 12 14
 5 5
 */



