import Foundation

func solution(_ sizes:[[Int]]) -> Int {
   var width: Int = 0
   var height: Int = 0

   for element in sizes{
       width = max(width, element.max()!)
       height = max(height, element.min()!)

       /*

        width height -> width height
         60     50       60    50
         70     30       70    50
         60     30       70    50
         80     40       80    50
        */
   }

   return width * height
}

let values = [[10, 7], [12, 3], [8, 15], [14, 7], [5, 15]]
print(solution(values))
