//Z(1074)
//https://www.acmicpc.net/problem/1074

let NM = readLine()!.split(separator: " ").map { Int(String($0))! }
let N = NM[0], r = NM[1], c = NM[2]
var size: Int = 1
var result: Int = 0

for _ in 1...N {
    size *= 2
}

recursion(size, (r,c))
print(result)

func recursion(_ size: Int, _ coordinate: (r: Int, c: Int)) {
    let half: Int = size / 2
    var row = coordinate.r
    var col = coordinate.c
    
    if row == 0 && col == 0 { return }
    
    if row < half && col < half {
        recursion(half, (row, col))
    } else if row < half && col >= half {
        col -= half
        result += (half*half*1)
        recursion(half, (row, col))
    } else if row >= half && col < half {
        row -= half
        result += (half*half*2)
        recursion(half, (row, col))
    } else if row >= half && col >= half{
        row -= half
        col -= half
        result += (half*half*3)
        recursion(half, (row, col))
    }
}

/*
 목표좌표가 Z순서 1~4분면 중 어디에 속하는지
 각 사분면에 따라 좌표값이 어떻게, 얼만큼 변하는지
 종료는 어는경우인지
 */
