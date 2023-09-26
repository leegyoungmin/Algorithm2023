let NM = readLine()!.split(separator: " ").map { Int($0)! }
let n = NM[0], m = NM[1]

var map = Array(repeating: [Int](), count: n + 1)

for _ in 0..<m {
   let input = readLine()!.split(separator: " ").map { Int($0)! }
   let i = input[0], j = input[1]

   map[j].append(i)
}

func dfs(_ now: Int,_ cntt: Int, _ v: inout [Int], _ count: inout Int, _ m: inout [[Int]]) {
   v[now] = cntt
   count += 1

   for next in m[now] {
       if v[next] != cntt {
           dfs(next, cntt, &v, &count, &m)
       }
   }
}

var visit = [Int](repeating: 0, count: n + 1)
var count = 0
var maxx = 0
var answer: [Int] = []

for i in 1...n {
   count = 0
   dfs(i, i, &visit, &count, &map)

   if count == maxx {
       answer.append(i)
   }

   if count > maxx {
       maxx = count
       answer = [i]
   }
}

print(answer.map { String($0) }.joined(separator: " "))
