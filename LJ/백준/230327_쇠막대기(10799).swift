//쇠막대기(10799)
//https://www.acmicpc.net/problem/10799

let input = readLine()!.compactMap{ String($0) }
var stick: Int = 0
var laser: Bool = false
var result: Int = 0

func solution() {
    var index: Int = 0
    
    while index < input.count {
        if input[index] == "(", input[index+1] == ")" {
            result += stick
            index = index + 2
            continue
        } else if input[index] == "(" {
            stick += 1
        } else if input[index] == ")" {
            stick -= 1
            result += 1
        }
        index += 1
    }
    
    print(result)
}

solution()

/*
 세가지 시점에 index, 쇠막대기 개수, 조각 개수의 변화에서 규칙을 찾는 문제
 1. () 레이저나오는 경우
 2. ( 쇠막대기 1개 증가할 때
 3. ) 쇠막대기 1개 감소할 때
 
 () 개수 == 레이저 개수
 ( 개수 == 쇠막대기 개수
 */
