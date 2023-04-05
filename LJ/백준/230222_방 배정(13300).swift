//방 배정(13300)
//https://www.acmicpc.net/problem/13300

let NK = readLine()!.split(separator: " ").map { Int(String($0))!}
let N = NK[0], K = NK[1]
var rooms = Array(repeating: Array(repeating: 0, count: 2), count: 6)
var count = 0

for _ in 0..<N {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    let Y: Int = input[1]-1  // Y: 학년, 행
    let S: Int = input[0]    // S: 성별, 열
    
    rooms[Y][S] += 1
}

for grade in 0..<6 {
    for gender in 0..<2 {
        if rooms[grade][gender] == 0 { continue }
        if rooms[grade][gender] > 0 {
            count += 1
        }
        if rooms[grade][gender] > K {
            count += 1
        }
    }
}

print(count)
