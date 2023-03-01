//키로거(5397)
//https://www.acmicpc.net/problem/5397

import Foundation

let inputLineCount: Int = Int(readLine()!)!
var result: [String] = []

for _ in 1...inputLineCount {
    var input = readLine()!.map{ String($0) }
    result.append(process(input))
}

result.forEach {
    print($0)
}

func process(_ input: [String]) -> String {
    var leftStack: [String] = []
    var rightStack: [String] = []
    
    for element in input {
        switch element {
        case "<":
            guard leftStack.isEmpty == false else { continue }
            rightStack.append(leftStack.removeLast())
        case ">":
            guard rightStack.isEmpty == false else { continue }
            leftStack.append(rightStack.popLast()!)
        case "-":
            leftStack.popLast()
        default:
            leftStack.append(element)
        }
    }
    
    var result: String = leftStack.joined() + rightStack.reversed().joined()
    
    return result
}

/*
 //❌ 오답 2 - 시간초과
 //reversed를 여러번 호출하기 때문
 //최종 결과값에서 한번만 reversed() 호출하여 해결
 case ">":
     guard rightStack.isEmpty == false else { continue }
     rightStack = rightStack.reversed()
     leftStack.append(rightStack.popLast()!)
     rightStack = rightStack.reversed()
 
 //❌ 오답 1 - 런타임에러
 //빈 배열에서(비어있을 가능성이 있는 배열에서) removeLast()를 시도했기 때문에
 //popLast()로 변경하여 해결
  case "-": 
      leftStack.removeLast()
 */
