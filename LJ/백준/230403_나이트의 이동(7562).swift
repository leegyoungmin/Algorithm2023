//나이트의 이동(7562)
//https://www.acmicpc.net/problem/7562

let n = Int(readLine()!)!
var input = [Int]()
var visit = [[Bool]]()
let axisX = [-1, -2, -2, -1, 1, 2, 2,  1]
let axisY = [-2, -1,  1,  2, 2, 1, -1, -2]

for _ in 0..<n {
   let length = Int(readLine()!)!
   visit = Array(repeating: Array(repeating: false, count: length), count: length)

   input = readLine()!.split(separator: " ").map { Int(String($0))! }
   let start = (input[0], input[1])

   input = readLine()!.split(separator: " ").map { Int(String($0))! }
   let end = (input[0], input[1])

   solution(start, end, length)
}

func solution(_ start: (Int, Int), _ end: (Int, Int), _ length: Int) {
   var queue: [(Int, Int, count: Int)] = [(start.0, start.1,  count: 0)]
   var front: Int = 0
   visit[start.0][start.1] = true

   while front < queue.count {
       let now = queue[front]
       front += 1

       if now.0 == end.0, now.1 == end.1 {
           print(now.count)
           return
       }

       for i in 0..<axisX.count {
           let lx = now.0 + axisX[i],  ly = now.1 + axisY[i]
           if lx < 0 || lx > length-1 || ly < 0 || ly > length-1 { continue }
           if visit[lx][ly] { continue }
           visit[lx][ly] = true
           queue.append((lx,ly, now.count+1))
       }
   }
}

/*
 - 갈 수 있는곳은 8가지 -> 방향 배열 만들기
 - 경우의수 마다 횟수를 기억해야함 -> 최소거리 뽑기위함
 - bfs 함수의 인자 말고 queue의 인자를 이용할 것
 - 한번 순회할 때마다 변경된만큼만 dequeue할 경우에는 queue의 인자를 이용(now.count)

*/
