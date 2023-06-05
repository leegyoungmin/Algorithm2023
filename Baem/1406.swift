//
////https://www.acmicpc.net/problem/1406
//
// 시간초과
//var word = [""] + Array(readLine()!).map { String($0) }
//var wordCount = word.count
//var cursor = word.count
//
//func L() {
//    if cursor == 1 {
//        return
//    } else {
//        cursor -= 1
//    }
//}
//
//func D() {
//    if cursor == word.count {
//        return
//    } else {
//        cursor += 1
//    }
//}
//
//func B() {
//    if cursor == 1 {
//        return
//    } else {
//        word.remove(at: cursor - 1)
//        cursor -= 1
//    }
//}
//
//func Ppp(string: String) {
//    word.insert(string, at: cursor)
//    cursor += 1
//}
//
//let roof = Int(readLine()!)!
//
//for _ in 1...roof {
//    let input = readLine()!
//
//    switch input {
//        case "L":
//            L()
//        case "D":
//            D()
//        case "B":
//            B()
//        default:
//            Ppp(string: input.split(separator: " ").map { String($0) }[1])
//    }
//}
//
//print(word.joined())


var left = readLine()!.map { String($0) }
var right = [String]()

let roof = Int(readLine()!)!

for _ in 1...roof {
    let input = readLine()!

    switch input {
        case "L":
            if !left.isEmpty {
                right.append(left.removeLast())
            }
        case "D":
            if !right.isEmpty {
                left.append(right.removeLast())
            }
        case "B":
            if !left.isEmpty {
                left.removeLast()
            }
        default:
//            left.append(input.split(separator: " ").map { String($0) }[1]) -> 시간초과됨
            left.append(String(input.last!))
    }
}

print((left+right.reversed()).joined())
