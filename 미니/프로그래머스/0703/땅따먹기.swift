import Foundation

func solution(_ land:[[Int]]) -> Int{
   var result = land

   for idx in 0..<(land.count - 1) {
       result[idx + 1][0] += max(result[idx][1], result[idx][2], result[idx][3])
       result[idx + 1][1] += max(result[idx][0], result[idx][2], result[idx][3])
       result[idx + 1][2] += max(result[idx][0], result[idx][1], result[idx][3])
       result[idx + 1][3] += max(result[idx][0], result[idx][1], result[idx][2])
   }

   return result.last!.max()!
}

print(solution([[1,2,3,5],[5,6,7,8],[4,3,2,1]]))
