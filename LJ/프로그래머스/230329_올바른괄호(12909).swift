//올바른괄호(12909)
//https://school.programmers.co.kr/learn/courses/30/lessons/12909

import Foundation

func solution(_ s: String) -> Bool {

    var inputs: [String] = s.map { String($0) }
    var stack = [String]()

    for _ in 0..<inputs.count {
        if inputs.first == "(" {
            stack.append(inputs.removeFirst()) //stack에 추가
            print(stack)
        } else if inputs.first == ")" {
            if stack.last == "(" && stack.isEmpty == false {
                stack.removeLast()
                inputs.removeFirst()  //함께 삭제
                print(stack)
            } else if stack.isEmpty == true {
                return false
            }
        }
    }

    if stack.isEmpty == true {
        return true
    } else {
        return false
    }
}

/*
 - 효율성테스트는 정수로 +, - 로 다시 풀어보기
 - 스택 만들지 않고, 스택의 원리만 사용하였다.
 */
