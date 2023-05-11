let N = Int(readLine()!)!

var arr = [[Int]]()
var dpArr = Array(repeating: Array(repeating: 0, count: 3), count: N)

for _ in 0..<N {
  let inputs = readLine()!.split(separator: " ").map { Int($0)! }
  arr.append(inputs)
}

func solve() {
  dpArr[0] = arr[0]
  
  for idx in 1..<dpArr.count {
    for i in 0..<3 {
      if i == 0 {
        dpArr[idx][i] = min(dpArr[idx - 1][i + 1], dpArr[idx - 1][i + 2]) + arr[idx][i]
      } else if i == 1 {
        dpArr[idx][i] = min(dpArr[idx - 1][i - 1], dpArr[idx - 1][i + 1]) + arr[idx][i]
      } else {
        dpArr[idx][i] = min(dpArr[idx - 1][i - 2], dpArr[idx - 1][i - 1]) + arr[idx][i]
      }
    }
  }
}

solve()

print(dpArr.last!.min()!)
