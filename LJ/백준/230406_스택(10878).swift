//스택(10878)
//https://www.acmicpc.net/problem/10828

let N = Int(readLine()!)!
var stack = [Int]()

for _ in 0..<N {
    let input = readLine()!.split(separator: " ").map { String($0) }
    solution(input)
}

func solution(_ input: [String]) {
    let command: String = input[0]
    switch command {
    case "push":
        if input.count > 1 {
            let number: Int = Int(input[1])!
            stack.append(number)
        }
    case "pop":
        stack.isEmpty ? print(-1) : print(stack.removeLast())
    case "size":
        print(stack.count)
    case "empty":
        stack.isEmpty ? print(1) : print(0)
    case "top":
        stack.isEmpty ? print(-1) : print(stack.last!)
    default:
        break
    }
}
