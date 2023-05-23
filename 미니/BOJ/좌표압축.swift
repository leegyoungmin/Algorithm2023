let N = Int(readLine()!)!
let map = readLine()!.split(separator: " ").map { Int($0)! }
var dict = map.sorted()

var values = [Int]()
var result: [Int] = []

for i in 0..<N {
 if i == 0 {
   values.append(dict[i])
 } else if dict[i] != dict[i - 1] {
   values.append(dict[i])
 }
}

func solve(_ target: Int, _ en: Int) -> Int {
 var st = 0, en = en

 while st < en {
   let mid = (st + en) / 2

   if values[mid] <= target {
     st = mid + 1
   } else if values[mid] > target {
     en = mid
   }
 }

 return st
}

for v in map {
 print(solve(v, values.count) - 1)
}
