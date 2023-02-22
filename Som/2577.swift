// 2577 숫자의 개수

var numArr: [Int] = [Int](repeating: 0, count: 10)

let firstNum = Int(readLine()!)!
let secondNum = Int(readLine()!)!
let thridNum = Int(readLine()!)!
let multiNum = firstNum * secondNum * thridNum

for i in String(multiNum) {
    numArr[i.wholeNumberValue!] += 1
}

print(numArr.map {"\($0)"}.joined(separator: "\n"))
