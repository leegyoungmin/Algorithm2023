
//회사에 있는 사람(7785)
//https://www.acmicpc.net/problem/7785

let n = Int(readLine()!)!
var result = Set<String>()

func solution(employee: String, record: String ) {
    switch record {
    case "enter":
        result.insert(employee)
    case "leave":
        result.remove(employee)
    default:
        break
    }
}

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").compactMap{ String($0) }
    solution(employee: input[0], record: input[1])
}

result.sorted(by: >).forEach { print($0) }

/*
 swift는 기본적으로 대소문자를 구분한다.
 sorted()함수의 리턴값이 배열이므로 set를 sorted한 결과값을 이용하여 역순 출력한다.

- 다른 풀이방법
- 배열2개 enter사람이름, leave사람이름 각각 만들고, 특정 사람이름을 기준으로 enter횟수가 더 큰사람 회사에 남아있는 사람임을 이용하여 구한다.
- 
 */
