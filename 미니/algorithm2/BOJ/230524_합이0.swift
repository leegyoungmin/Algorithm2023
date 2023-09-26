let N = Int(readLine()!)!
var map = readLine()!.split(separator: " ").map { Int($0)! }

map.sort()

func lowBound(target: Int, st: Int, en: Int) -> Int {
   var st = st, en = en
   var index = -1

   while st <= en {
       let mid = (st + en) / 2

       if map[mid] > target {
           en = mid - 1
       } else if target == map[mid] {
           index = mid
           en = mid - 1
       } else {
           st = mid + 1
       }
   }

   return index
}

func upBound(target: Int, st: Int, en: Int) -> Int {
   var st = st, en = en
   var index = -1

   while st <= en {
       let mid = (st + en) / 2

       if map[mid] > target {
           en = mid - 1
       } else if target == map[mid] {
           index = mid
           st = mid + 1
       } else {
           st = mid + 1
       }
   }

   return index
}


if N == 1 {
   print(0)
} else {
   var result: Int = 0

   for i in 0..<N-2 {
       for j in (i + 1)..<N-1 {
           let target = -(map[i] + map[j])

           let low = lowBound(target: target, st: j + 1, en: N - 1)
           let up = upBound(target: target, st: j + 1, en: N - 1)

           if low + up == -2 { continue }

           result += (up - low + 1)
       }
   }

   print(result)
}
