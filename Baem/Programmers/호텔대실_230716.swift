/*
 24시간 == 60 * 24 == 1440분 을 이용해서 1440개의 스택을 사용해서 넣어준다. 라고생각!
 시작시간을 기준으로 정렬
 1. 시간 -> 분으로 정렬 -> 23시 10분 이면 23*60+10 = 1390
 2. stack이라는 프로퍼티에 0~ 3610 까지의 array를 만들어 빌리는시간에 1씩 더해 가장 큰 값을 return 하도록 만든다

 */

//func solution(_ book_time:[[String]]) -> Int {
//    let changeBooktime = book_time.map {
//        let start = $0[0].split(separator: ":")
//        let end = $0[1].split(separator: ":")
//
//        return (Int(start[0])!*60 + Int(start[1])!, Int(end[0])!*60 + Int(end[1])! + 9)
//    }
//
//    var stack = Array(repeating: 0, count: 3610) //10 추가는 끝나는시간이 59분일때 10분 청소시간을 추가하기위함
//
//    for tuple in changeBooktime {
//
//        for index in tuple.0...tuple.1 {
//            stack[index] += 1
//        }
//
//    }
//
//    return stack.max()!
//}
//// -> xcode에서는 잘 작동 하지만 programmers에서는 적용이 안됨

//for 문으로 변경해서 통과
func solution(_ book_time:[[String]]) -> Int {
    var changeBooktime = [(Int, Int)]()
    
    for time in book_time {
        let start = time[0].split(separator: ":")
        let end = time[1].split(separator: ":")
        
        changeBooktime.append((Int(start[0])!*60 + Int(start[1])!, Int(end[0])!*60 + Int(end[1])! + 9))
    }
    
    var stack = Array(repeating: 0, count: 3610) //10 추가는 끝나는시간이 59분일때 10분 청소시간을 추가하기위함

    for tuple in changeBooktime {

        for index in tuple.0...tuple.1 {
            stack[index] += 1
        }

    }

    return stack.max()!
}


print(solution([["15:00", "17:00"], ["16:40", "18:20"], ["14:20", "15:20"], ["14:10", "19:20"], ["18:20", "21:20"]]))
print(solution([["09:10", "10:10"], ["10:20", "12:20"]]))
print(solution([["10:20", "12:30"], ["10:20", "12:30"], ["10:20", "12:30"]]))
