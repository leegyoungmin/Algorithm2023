//제로(10773)
//https://www.acmicpc.net/problem/10773

//복습 230521
let k = Int(readLine()!)!
var numbers = [Int]()

for _ in 0..<k {
    let input = Int(readLine()!)!
    if input == 0 {
        numbers.removeLast()
    } else {
        numbers.append(input)
    }
}

print(numbers.reduce(0,+))

/*
 removeLast로 써서 그런지 시간이 더 오래걸렸다.
 문제 조건에 '0을 외칠때 제거할 숫자가 있음을 보장한다.'는 내용이 있어
 'numberArray.count != 0' 조건은 불필요했다.
 */


// let K = Int(readLine()!)!
// var numberArray: [Int] = []

// for _ in 1...K {
//     var number = Int(readLine()!)!
//     if number != 0 {
//         numberArray.append(number)
//     } else if (number == 0) && (numberArray.count != 0) {
//         numberArray.popLast()
//     }
// }

// var sum: Int = 0
// for value in numberArray {
//     sum += value
// }
// print(sum)
