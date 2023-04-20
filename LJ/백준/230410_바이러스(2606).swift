//바이러스(2606)
//https://www.acmicpc.net/problem/2606

let n = Int(readLine()!)!
let m = Int(readLine()!)!
var visit = Array(repeating: false, count: n+1)
var numbers = Array(repeating: [Int](), count: n+1)
var count: Int = 0

for _ in 1...m {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    numbers[input[0]].append(input[1])
    numbers[input[1]].append(input[0])
}

solution(1)
print(count)

func solution(_ n: Int) {
    visit[n] = true
    for i in 0..<numbers[n].count {
        let node = numbers[n][i]
        if visit[node] == true { continue }
        if visit[node] == false {
            visit[node] = true
            count += 1
            solution(node)
        }
    }
}
