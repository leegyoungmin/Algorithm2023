let n = Int(readLine()!)!
let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let target: (x: Int, y: Int) = (input[0], input[1])
let m = Int(readLine()!)!

var map = Array(repeating: [Int](), count: n + 1)
var visit = Array(repeating: -1, count: n + 1)

for _ in 0..<m {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    
    map[input[0]].append(input[1])
    map[input[1]].append(input[0])
}

func dfs(now: Int) {
    if now == target.y {
        count = visit[target.y]
        return
    }
    
    for idx in map[now] {
        if visit[idx] >= 0 { continue }
        visit[idx] = visit[now] + 1
        dfs(now: idx)
    }
}

var count: Int = -1
visit[target.x] = 0
dfs(now: target.x)
print(count)
