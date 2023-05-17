//계단 오르기(2579)
//https://www.acmicpc.net/problem/2579

let n = Int(readLine()!)!
var stairs = Array(repeating: 0, count: n+1)
var d = Array(repeating: 0, count: n+1)
var maxScore: Int = 0

for i in 1...n {
   stairs[i] = Int(readLine()!)!
}

print(solution())

func solution() -> Int{
   if n == 1 {
       return stairs[1]
   } else if n == 2 {
       return max(stairs[2], stairs[1]+stairs[2])
   } else if n == 3 {
       return max(stairs[2]+stairs[3], stairs[1]+stairs[3])
   } else {
       d[1] = stairs[1]
       d[2] = max(stairs[2], stairs[1]+stairs[2])
       d[3] = max(stairs[2]+stairs[3], stairs[1]+stairs[3])

       for i in 4...n {
           d[i] = max(d[i-3]+stairs[i-1]+stairs[i], d[i-2]+stairs[i])
       }
       return d[n]
   }
}


/*
 d[i] = i번째까지 올랐을 때 얻을 수 있는 최대 점수
 
 */
