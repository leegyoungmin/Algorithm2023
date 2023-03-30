//제로(10773)
//https://www.acmicpc.net/problem/10773

let K = Int(readLine()!)!
var numberArray: [Int] = []

for _ in 1...K {
    var number = Int(readLine()!)!
    if number != 0 {
        numberArray.append(number)
    } else if (number == 0) && (numberArray.count != 0) {
        numberArray.popLast()
    }
}

var sum: Int = 0
for value in numberArray {
    sum += value
}
print(sum)
