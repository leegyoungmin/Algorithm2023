let count = Int(readLine()!)!
var values = [0]

var dp = Array(repeating: 0, count: count + 1)

for _ in 0..<count {
  let input = Int(readLine()!)!
  
  values.append(input)
}

func solve() {
  for i in 1...count {
    if i == 1 {
      dp[1] = values[1]
    } else if i == 2 {
      dp[2] = values[1] + values[2]
    } else if i == 3 {
      dp[3] = max(values[2] + values[3], values[1] + values[3])
    } else {
      dp[i] = max(dp[i - 2] + values[i], dp[i - 3] + values[i - 1] + values[i])
    }
  }
  
  print(dp[count])
}

solve()
