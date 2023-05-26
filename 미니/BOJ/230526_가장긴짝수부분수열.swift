
let NK = readLine()!.split(separator: " ").map { Int($0)! }
let n = NK[0], k = NK[1]

var map = readLine()!.split(separator: " ").map { Int($0)! }

// 부분 수열을 만들 시작점과 끝점
var st = 0
var en = 0

var count: Int = (map[st] % 2 == 0) ? 0 : 1 // 홀수의 개수

var result: Int = (map[st] % 2 == 0) ? 1 : 0
// 내가 가지고 있는 짝수의 개수 (시작점이 짝수라고 한다면, 1개의 값을 초기값으로 준다.)

while en < n - 1 { // 인덱스에 다다를 때까지 돌린다.
    en += 1 // 끝지점을 옮긴다.
    
    if map[en] % 2 != 0 {
        count += 1
        // 끝지점이 홀수 일 경우 홀수의 개수를 추가한다
        
        while count > k { // 홀수의 개수가 k보가 큰 경우에 수행한다.
            if map[st] % 2 != 0 {
                count -= 1 // 시작점이 홀수일 경우 홀수의 개수를 줄인다.
            }
            
            st += 1 // 시작지점을 오른쪽으로 밀어버려
        }
    }
    
    result = max(result, en - st + 1 - count)
    // 끝점과 시작점을 빼고, 인덱스 차이 1더하고, 홀 수의 개수를 뺀다.
}

print(result)
