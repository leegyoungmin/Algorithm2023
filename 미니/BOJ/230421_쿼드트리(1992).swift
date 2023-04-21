let N = Int(readLine()!)!
var map = Array(repeating: [String](), count: N)

for idx in 0..<N {
  let input = readLine()!
  
  for char in input {
    map[idx].append(String(char))
  }
}

func checkCompression(row: Int, col: Int, length: Int) -> Bool {
  let base = map[row][col]
  
  for row in row..<(row + length) {
    for col in col..<(col + length) {
      if map[row][col] != base {
        return false
      }
    }
  }
  
  return true
}

func recursion(n: Int, x: Int, y: Int) -> String {
  if checkCompression(row: x, col: y, length: n) {
    return "\(map[x][y])"
  }
  
  var result = "("
  
  let half = (n / 2)
  result += recursion(n: half, x: x, y: y)
  result += recursion(n: half, x: x, y: y + half)
  result += recursion(n: half, x: x + half, y: y)
  result += recursion(n: half, x: x + half, y: y + half)
  result += ")"
  
  return result
}

print(recursion(n: N, x: 0, y: 0))
