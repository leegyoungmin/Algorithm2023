//스택(10878)
//https://www.acmicpc.net/problem/10828

//복습 230520
let n = Int(readLine()!)!
var stack = [Int]()

func solution(_ input: [String]) {
    let command: String = input[0]
    var result: Int = 0

    switch command {
    case "push":
        let number: Int = Int(input[1])!
        stack.append(number)
    case "pop":
        result = stack.isEmpty ? -1 : stack.removeLast()
    case "empty":
        result = stack.isEmpty ? 1 : 0
    case "size":
        result = stack.count
    case "top":
        result = stack.isEmpty ? -1 : stack.last!
    default:
        break
    }

    if command != "push" {
        print(result)
    }
}

for _ in 0..<n {
    let command: [String] = readLine()!.split(separator: " ").map{ String($0) }
    solution(command)
}

/*
 case별 print문을 넣어주는지
 계산결과를 result변수에 넣은 후 print문을 쓰는지

 후자의 경우가 4ms 더 빨랐다.
 코드가 짧다고 더 빠른것도, 변수를 하나 더 선언한다고 느려지는것도 아닌듯 하다.
 
 */



//
// let N = Int(readLine()!)!
// var stack = [Int]()

// for _ in 0..<N {
//     let input = readLine()!.split(separator: " ").map { String($0) }
//     solution(input)
// }

// func solution(_ input: [String]) {
//     let command: String = input[0]
//     switch command {
//     case "push":
//         if input.count > 1 {
//             let number: Int = Int(input[1])!
//             stack.append(number)
//         }
//     case "pop":
//         stack.isEmpty ? print(-1) : print(stack.removeLast())
//     case "size":
//         print(stack.count)
//     case "empty":
//         stack.isEmpty ? print(1) : print(0)
//     case "top":
//         stack.isEmpty ? print(-1) : print(stack.last!)
//     default:
//         break
//     }
// }
