import Foundation

var finalEmoticonPlusCount = 0
var finalSum = 0

func solution(_ users: [[Int]], _ emoticons: [Int]) -> [Int] {
   let rates = [10, 20, 30, 40]

   dfs(0, 0, rates, emoticons, users, result: [])

   return [finalEmoticonPlusCount, finalSum]
}

func dfs(_ start: Int, _ depth: Int, _ rates: [Int], _ emoticons: [Int], _ users: [[Int]], result: [Int]) {
   if depth == emoticons.count {
       calUsers(result, users: users, emoticons: emoticons)
       return
   }

   for idx in start..<rates.count {
       var result = result
       result.append(rates[idx])

       dfs(start, depth + 1, rates, emoticons, users, result: result)

       result.removeLast()
   }
}

func calUsers(_ rates: [Int], users: [[Int]], emoticons: [Int]) {
   var sumResult = 0
   var emoticonPlusCount = 0

   for user in users {
       var sum = 0

       let uRate = user[0]

       for idx in 0..<emoticons.count {
           let rate = rates[idx]

           if rate >= uRate {
               sum += discountPrice(emoticons[idx], rate)
           }
       }

       if sum >= user[1] {
           emoticonPlusCount += 1
       } else {
           sumResult += sum
       }
   }

   if emoticonPlusCount > finalEmoticonPlusCount {
       finalEmoticonPlusCount = emoticonPlusCount
       finalSum = sumResult
   } else if emoticonPlusCount == finalEmoticonPlusCount {
       if sumResult > finalSum {
           finalSum = sumResult
       }
   }
}

func discountPrice(_ origin: Int, _ percent: Int) -> Int {
   return origin - ((origin / 100) * percent)
}
