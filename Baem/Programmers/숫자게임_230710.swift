//// https://school.programmers.co.kr/learn/courses/30/lessons/12987
/// stack

//
//func solution(_ a:[Int], _ b:[Int]) -> Int {
//    var sortedA = a.sorted().reversed().map{Int($0)}
//    var sortedB = b.sorted().reversed().map{Int($0)}
//    var result = 0
//
//    while !sortedA.isEmpty && !sortedB.isEmpty {
//        if sortedA.last! < sortedB.last! {
//            result += 1
//            sortedA.removeLast()
//        }
//        sortedB.removeLast()
//    }
//
//    return result
//}
//
//print(solution([5,1,3,7], [2,2,6,8])) // 3

//마지막 테스트만 시간초과 실패


// 다시 revers 안해서 통과
func solution(_ a:[Int], _ b:[Int]) -> Int {
    var sortedA = a.sorted()
    var sortedB = b.sorted()
    var result = 0
    
    while !sortedA.isEmpty && !sortedB.isEmpty {
        if sortedA.last! < sortedB.last! {
            result += 1
            sortedB.removeLast()
        }
        sortedA.removeLast()
    }
    
    return result
}
