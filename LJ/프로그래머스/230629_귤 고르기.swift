//귤 고르기
//https://school.programmers.co.kr/learn/courses/30/lessons/138476

print(solution(6, [1, 3, 2, 5, 4, 5, 2, 3]))
// print(solution(4, [1, 3, 2, 5, 4, 5, 2, 3]))

func solution(_ k: Int, _ tangerine: [Int]) -> Int {
   var tan = tangerine
   var tangerineSizes = Array(repeating: 0, count: tan.max()!+1)
   var count: Int = 0

   tan.forEach {
       tangerineSizes[$0] += 1
   }
   tangerineSizes = tangerineSizes.sorted(by: >)  //[2, 2, 2, 1, 1, 0]

   for i in 0..<tangerineSizes.count-1 {
       count += tangerineSizes[i]
       if count >= k {
           return i + 1
       }
   }

   return k
}


/*
 오답 1: 시간초과(test27~30,33,34)
 최대값 찾기 -> 내림차순 정렬 후 차례로 더하기
 귤 크기 종류 result변수로 세기 -> 해당 index + 1 값이 곧 종류이므로 변수 불필요

 func solution2(_ k: Int, _ tangerine: [Int]) -> Int {
     var tan = tangerine
     var tangerineSizes = Array(repeating: 0, count: tan.max()!+1)
     var count: Int = 0
     var result: Int = 0
     
     tan.sort()  //[1, 2, 2, 3, 3, 4, 5, 5]
     
     tan.forEach {
         tangerineSizes[$0] += 1
     }
     
     while count < k {
         let value = tangerineSizes.max()!
         let index = tangerineSizes.firstIndex(of: value)!
         count += value
         tangerineSizes[index] = 0
         result += 1
     }
     
     return result
 }
 */
