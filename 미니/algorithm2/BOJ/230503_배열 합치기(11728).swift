let NM = readLine()!.split(separator: " ").map { Int($0)! }
let N = NM[0], M = NM[1]
let maxLength = (N * M)

var aList: [Int] = readLine()!.split(separator: " ").map { Int($0)! } // [0, 1, 2]
var bList: [Int] = readLine()!.split(separator: " ").map { Int($0)! }

var (aPoint, bPoint) = (0, 0) // 투 포인터
var result = ""

while aPoint < N && bPoint < M {
  if aList[aPoint] < bList[bPoint] {
    result.write("\(aList[aPoint]) ")
    aPoint += 1
  } else {
    result.write("\(bList[bPoint]) ")
    bPoint += 1
  }
}

while aPoint < N {
  result.write("\(aList[aPoint]) ")
  aPoint += 1
}

while bPoint < M {
  result.write("\(bList[bPoint]) ")
  bPoint += 1
}

result.removeLast()

print(result)
