func solution(_ numbers: [Int], _ target: Int) -> Int {
   let answer = dfs(depth: 0, target: target, numbers: numbers, sum: 0)

   return answer
}

func dfs(depth: Int, target: Int, numbers: [Int], sum: Int) -> Int {
   var ans = 0

   if depth == numbers.count {
       return sum == target ? 1 : 0
   }

   ans += dfs(depth: depth + 1, target: target, numbers: numbers, sum: sum + numbers[depth])
   ans += dfs(depth: depth + 1, target: target, numbers: numbers, sum: sum - numbers[depth])

   return ans
}
