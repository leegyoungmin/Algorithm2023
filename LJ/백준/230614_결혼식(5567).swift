
//결혼식(5567)
//https://www.acmicpc.net/problem/5567

let n = Int(readLine()!)! //동기의 수
let m = Int(readLine()!)! //리스트의 길이
var array = Array(repeating: [Int](), count: n+1)
var visit = Array(repeating: false, count: n+1)

for _ in 0..<m {
    let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
    array[input[0]].append(input[1])
    array[input[1]].append(input[0])
}
//print(array) //[[], [2, 3], [1, 3], [1, 4, 2], [3, 5], [4]]

visit[1] = true
for i in 0..<array[1].count {
    dfs(array[1][i], 1)
}

let count = visit.filter{ $0 == true }.count
print(count-1)

func dfs(_ point: Int, _ depth: Int) {
    if depth > 2 {
        return
    }
    visit[point] = true
    
    for index in array[point] {
        if visit[index] == true { continue }
        dfs(index, depth + 1)
    }
}

/*
 1의 친구 2와 3             depth: 0
 친구2의 친구 : 1, 3         depth: 1
 친구3의 친구 : 1, 4, 2      depth: 2
                    depth: 3 -> 종료
 
 초대받은 사람 : 2, 3, 4
 
 */
