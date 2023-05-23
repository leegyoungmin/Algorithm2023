let N = Int(readLine()!)!
var values: [Int] = []

var numbers: [Int] = []

for _ in 0..<N {
 let input = Int(readLine()!)!
 values.append(input)
}
values.sort()

for i in 0..<N {
 for j in i..<N {
   numbers.append(values[i] + values[j])
 }
}


numbers.sort()

func search(_ target: Int, _ en: Int) -> Bool {
 var st = 0, en = en - 1

 while st < en {
   let mid = (st + en) / 2

   if numbers[mid] < target {
     st = mid + 1
   } else if numbers[mid] > target {
     en = mid - 1
   } else {
     return true
   }
 }

 return false
}

func main() {
 for i in stride(from: values.count - 1, through: 0, by: -1) {
   for j in 0...i {
     if search(values[i] - values[j], numbers.count) {
       print(values[i])
       return
     }
   }
 }
}

main()
