//괄호(9012)
//https://www.acmicpc.net/problem/9012

let N: Int = Int(readLine()!)!
var string: String = ""
var result = [String]()

for _ in 1...N {
    string = readLine()!
    result.append(solution(string))
}

result.forEach {
    print($0)
}

func solution(_ s: String) -> String {
    let array: [String] = s.map{ String($0) }
    var stack = [String]()
    for idx in 0..<array.count {
        switch array[idx] {
        case "(":
            stack.append(array[idx])
        case ")":
            if stack.last == "(" {
                stack.removeLast()
            } else {
                stack.append(array[idx])
            }
        default:
            break
        }
    }
    return stack.count == 0 ? "YES" : "NO"
}
