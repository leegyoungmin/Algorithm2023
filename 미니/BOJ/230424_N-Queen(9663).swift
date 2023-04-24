let n = Int(readLine()!)!

var current = Array(repeating: false, count: n)
var rightDown = Array(repeating: false, count: n + n + 10)
var leftDown = Array(repeating: false, count: n + n + 10)

var count: Int = 0

func recursion(_ row: Int) {
  if row == n {
    // 행이 최대 인덱스와 동일해진 경우 count의 값을 올리고 반환한다.
    count += 1
    return
  }
  
  for c in 0..<n {
    let right = c - row + n
    let left = row + c
    
    if current[c] { continue }
    if rightDown[right] { continue }
    if leftDown[left] { continue }
    
    current[c] = true
    rightDown[right] = true
    leftDown[left] = true
    
    recursion(row + 1)
    
    current[c] = false
    rightDown[right] = false
    leftDown[left] = false
  }
}

recursion(0)

print(count)
