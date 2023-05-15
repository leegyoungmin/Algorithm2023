//회의실 배정(1931)
//https://www.acmicpc.net/problem/1931

let n = Int(readLine()!)!
var meetings = [(endT: Int, startT: Int)]()

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
    meetings.append((input[1], input[0]))
}

solution(meetings)

func solution(_ meetings: [(endT: Int, startT: Int)]) {
    let sortedMeetings = meetings.sorted(by: <)
    var beforeEndTime: Int = 0
    var count: Int = 0
    
    sortedMeetings.forEach {
        if beforeEndTime <= $0.startT {
            count += 1
            beforeEndTime = $0.endT
            print($0)
        }
    }
    print(count)
}

/*

주의할 점
 회의가 끝나는 동시에 시작할 수 있다.
    - ex. 1~2, 2~4  2개의 회의 진행 가능하다는 뜻
 
 회의가 시작하자마자 끝날 수 있다.
 - ex. 1~2, 2~2  2개의 회의 진행 가능하다는 뜻
 
 끝나는 시간이 빠른 순으로 오름차순 정렬한 뒤 차례로 검사

*/
