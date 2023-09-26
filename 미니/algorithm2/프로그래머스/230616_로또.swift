var result = Array(repeating: 0, count: 6)

func recursion(numbers: [Int], start: Int, depth: Int) {
 if depth == 6 {
   print(result.map(String.init).joined(separator: " "))
   return
 }

 for idx in start..<numbers.count {
   result[depth] = numbers[idx]

   recursion(numbers: numbers, start: idx + 1, depth: depth + 1)
 }
}

while true {
 let input = readLine()!

 if input == "0" {
   break
 }

 let values = input.split(separator: " ").map { Int(String($0))! }
 let numbers = Array(values[1...])

 recursion(numbers: numbers, start: 0, depth: 0)
 print()
}
