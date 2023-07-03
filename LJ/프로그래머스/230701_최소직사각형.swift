//최소직사각형
//https://school.programmers.co.kr/learn/courses/30/lessons/86491

//print(solution([[60, 50], [30, 70], [60, 30], [80, 40]]))

func solution(_ sizes:[[Int]]) -> Int {
   var cards: [[Int]] = sizes
   var maxW: Int = 0
   var maxH: Int = 0

   for index in 0..<cards.count {
       cards[index].sort()
       maxH = max(maxH, cards[index][0])
       maxW = max(maxW, cards[index][1])
   }

   return maxH * maxW
}
