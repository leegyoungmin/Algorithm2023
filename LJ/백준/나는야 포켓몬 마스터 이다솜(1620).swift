
//나는야 포켓몬 마스터 이다솜(1620)
//https://www.acmicpc.net/problem/1620

let input = readLine()!.split(separator: " ").compactMap { Int($0)! }
let n = input[0], m = input[1]
var pocketmon: [String : Int] = [:]
var pocketmonName = Array(repeating: "", count: n+1)
var result: String = ""

for i in 0..<n {
    let input = readLine()!
    pocketmon[input] = i+1
    pocketmonName[i+1] = input
}

for _ in 0..<m {
    let quiz = readLine()!
    solution(quiz)
}

result.removeLast()
print(result)

func solution(_ quiz: String)  {
    if Int(quiz) == nil {
        result += "\(pocketmon[quiz]!)\n"
        return
    } else {
        result += "\(pocketmonName[Int(quiz)!])\n"
        return
    }
}

/*
 Dictionary 하나로 두가지 문제를 해결하려다보니 시간초과가 났다.
 문자열로 숫자를 찾기에는 Dictionary가 낫고, 숫자로 문자열을 찾기엔 배열이 낫다.
 굳이 배열을 하나 더 많이 사용하면서까지 더 빠른시간에 찾아내는 것이 유의미한지는 모르겠다.
 */
