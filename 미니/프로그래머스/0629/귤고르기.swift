import Foundation

func solution(_ k:Int, _ tangerine:[Int]) -> Int {
   var dict = [Int: Int]()

   for t in tangerine {
       dict[t, default: 0] += 1
   }

   let values = Array(dict.values.sorted(by: >))
   var totalCount = 0

   for idx in 0..<values.count {
       let count = values[idx]

       if count + totalCount >= k {
           return idx + 1
       }

       totalCount += count
   }

   return .zero
}

let t = [1, 1, 1, 1, 2, 2, 2, 3]
let k = 2

print(solution(k, t))
