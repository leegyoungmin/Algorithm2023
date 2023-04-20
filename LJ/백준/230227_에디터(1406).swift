// 에디터(1406)
//https://www.acmicpc.net/problem/1406

var leftStack = readLine()!.map{ String($0) }

solution()

func solution() {
    let n = Int(readLine()!)!
    var rightStack = [String]()
    for _ in 1...n {
        let command: String = readLine()!
        switch command {
        case "L":
            if leftStack.isEmpty { continue }
            rightStack.append(leftStack.removeLast())
        case "D":
            if rightStack.isEmpty { continue }
            leftStack.append(rightStack.removeLast())
        case "B":
            if leftStack.isEmpty { continue }
            leftStack.popLast()
        default:
            leftStack.append(String(command.last!))
        }
    }
    
    print(leftStack.joined() + rightStack.reversed().joined())
}

/*
 오답1 : 시간초과
 명령어를 배열 -> 문자열로 수정
 명령어 "P $"를 제외하고 모두 한글자이므로 문자열로 받고 case "P"를 default로 해결
 removeFirst시간초과 -> removeLast로 수정
 */
