//2×n 타일링(11726)
//https://www.acmicpc.net/problem/11726

let n = Int(readLine()!)!
var d = Array(repeating: 0, count: 1005)

solution(n)

func solution(_ n: Int) {
    d[1] = 1
    d[2] = 2
    
    if n == 1 || n == 2 {
        print(d[n]%10007)
        return
    } else {
        for i in 3...n {
            d[i] = (d[i-1] + d[i-2])%10007
        }
        print(d[n])
    }
}

/*
 오답 1: 런타임에러,
 n == 1000 일 때 오버플로우나는 경우를 고려하지 않아 오버플로우가 발생했다.
 d 배열에 넣을 때 나머지 계산해서 넣어 해결
 */
