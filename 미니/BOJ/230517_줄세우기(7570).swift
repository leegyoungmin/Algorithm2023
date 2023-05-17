let N = Int(readLine()!)!

let values = readLine()!.split(separator: " ").map { Int($0)! }
var targets = Array(repeating: -1, count: N)

for i in 0..<values.count {
  targets[values[i] - 1] = i
}

func solve() -> Int {
  var count: Int = 0
  var maxValue: Int = 0

  for i in 0..<(targets.count - 1) {
    let cur = targets[i], next = targets[i + 1]

    if cur < next {
      count += 1
      maxValue = max(maxValue, count)
    } else {
      count = 0
    }
  }
  
  return N - maxValue - 1
}

print(solve())
