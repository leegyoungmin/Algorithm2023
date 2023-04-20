//  두 수의 합(3273)
//  https://www.acmicpc.net/problem/3273

let n = Int(readLine()!)!
let input = readLine()!
let sum = Int(readLine()!)!

let numbers = input.split(separator: " ").map { Int(String($0))! }.sorted(by: <)

solution()

func solution() {
   var left = 0
   var right = numbers.count - 1
   var count = 0

   while left < right {
       if numbers[left] + numbers[right] == sum {
           count += 1
           left += 1
           right -= 1
       } else if numbers[left] + numbers[right] > sum {
           right -= 1
       } else {
           left += 1
       }
   }

   print(count)
}

/*
오답 1: 틀렸습니다 
while조건문 left != right 일 때 틀렸음

오답 2: 런타임에러
let n: Int = Int(readLine()!)!
let input: String = readLine()!
let sumValue: Int = Int(readLine()!)!
var subtractedValue = 0
var numberOfPair: Int = 0
var checkArray = Array(repeating: 0, count: 1000000)
let inputArray: [String] = input.components(separatedBy: " ")
let array = inputArray.compactMap{ number in
   return Int(number)
}
for i in 1...array.count {
   subtractedValue = sumValue - i
   if checkArray[subtractedValue] == 1 {
       numberOfPair += 1
   }
   checkArray[i] = 1
}
print(numberOfPair)


오답 3: 시간초과
let n = Int(readLine()!)!
let input = readLine()!
let sumValue: Int = Int(readLine()!)!
var subtractedValue = 0
var numberOfPair = 0
let inputArray: [String] = input.components(separatedBy: " ")
let array = inputArray.compactMap { number in
   return Int(number)
}
for i in 1...n {
   subtractedValue = sumValue - array[i-1]
   for j in 1...n {
       if array[j-1] == subtractedValue && (i-1 < j-1) {
           numberOfPair += 1
       }
   }
}
print(numberOfPair)
*/
