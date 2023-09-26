import Foundation

func solution(_ word:String) -> Int {
   let chars: [Character] = ["A", "E", "I", "O", "U"]

   dfs(result: "", chars: chars)

   return countDict[word, default: 0]
}

var countDict = [String: Int]()
var count = 0

func dfs(result: String, chars: [Character]) {
   countDict[result, default: 0] = count

   if result.count == 5 { return }

   var result = result

   for c in chars {
       count += 1
       result.append(c)
       dfs(result: result, chars: chars)
       result.removeLast()
   }
}

print(solution("AAAAE"))
