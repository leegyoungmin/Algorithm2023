//균형잡힌 세상(4949)
//https://www.acmicpc.net/problem/4949

solution()

func solution() {
    var sentence: String = readLine()!
    var results = [String]()
    
    while sentence != "." {
        results.append(check(sentence))
        sentence = readLine()!
    }
    results.forEach {
        print($0)
    }
}

func check(_ s: String) -> String {
    var array: [String] = s.map{ String($0) }
    array.removeLast()
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
        case "[":
            stack.append(array[idx])
        case "]":
            if stack.last == "[" {
                stack.removeLast()
            } else {
                stack.append(array[idx])
            }
        default:
            break
        }
    }
    return stack.count == 0 ? "yes" : "no"
}

/*
 - 오답 1 : 아래 check2() 함수처럼 Int 숫자를 이용하려 했으나 반례가 하나씩 생겨서 틀림
 - 오답 2 : popLast() 결과값을 사용하지 않는다는 오류메세지, removeLast()로 변경하여 해결함
 - 오답 3 : else의 경우에 어떻게 할지 정해주지 않아 틀렸었음, 31번, 39번 추가하여 해결함
 */

//func check2(_ s: String) -> Bool {
//    var count: Int = 0
//    var countLarge: Int = 0
//    var array: [String] = s.map{ String($0) }
//    array.popLast()
//    print(array)
//    for idx in 0..<array.count {
//        switch array[idx] {
//        case "(":
//            count += 1
//        case ")":
//            if count >= 1 {
//                count -= 1
//            }
//        case "[":
//            countLarge += 1
//        case "]":
//            if countLarge >= 1 {
//                countLarge -= 1
//            }
//        case " ":
//            fallthrough
//        default:
//            break
//        }
//    }
//
//    if count == 0 && countLarge == 0 {
//        return true
//    } else {
//        return false
//    }
//}
