let NRC = readLine()!.split(separator: " ").map { Int(String($0))! }
var N = NRC[0], r = NRC[1], c = NRC[2]

var nsqure: Int = 1

for _ in 0..<N {
    nsqure *= 2
}

var result: Int = 0

func recursion(n: Int, start: (x: Int, y: Int)) {
    let half = n / 2
    let halfX = start.x + half
    let halfY = start.y + half
    
    if n == 2 {
        if start.x == r, start.y == c { result += 0; return }
        if start.x == r, (start.y + 1) == c { result += 1; return }
        if (start.x + 1) == r, start.y == c { result += 2; return }
        if (start.x + 1) == r, (start.y + 1) == c { result += 3; return }
        return
    }
    
    if r < halfX && c < halfY {
        recursion(n: half, start: start)
    }
    
    if r < halfX && c >= halfY {
        result += (half * half)
        recursion(n: half, start: (start.x, halfY))
    }
    
    if r >= halfX && c < halfY { // 3 사분면
        result += (half * half) * 2
        recursion(n: half, start: (halfX, start.y))
    }
    
    if r >= halfX && c >= halfY { // 4 사분면
        result += (half * half) * 3
        recursion(n: half, start: (halfX, halfY))
    }
}

recursion(n: nsqure, start: (0,0))
print(result)
