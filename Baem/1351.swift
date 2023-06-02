//MARK: 70% 시간초과

//let input = readLine()!.split(separator: " ").map { Int($0)! }
//
//let N = input[0]
//let P = input[1]
//let Q = input[2]
//
//func infi(i: Int) -> Int {
//    if i == 0 {
//        return 1
//    }
//
//    return infi(i: Int(i/P)) + infi(i: Int(i/Q))
//}
//
//print(infi(i: N))

/*
 n p  q = 7  2  3
 A0 = 1
 An =?
 A7 = A|7/2| + A|7/3|
    = A3 + A2
    = A3( A3 = A|3/2|  + A|3/3| = A1 + A1  = 2)
        +A2 (A2 = A|2/2|| + A0 = 1)
 */


////MARK: dic활용 68% 시간초과
//
//let input = readLine()!.split(separator: " ").map { Int($0)! }
//
//let N = input[0]
//let P = input[1]
//let Q = input[2]
//
//var dic = [0 : 1]
//
//func infi(i: Int) -> Int {
//
//    var value1 = 0
//    var value2 = 0
//
//if let p = dic[Int(i/P)] {
//    value1 = p
//} else {
//    let v = infi(i: Int(i/P))
//    dic[Int(i/P)] = v
//    value1 = v
//}
//
//if let q = dic[Int(i/Q)] {
//    value2 = q
//} else {
//    let v = infi(i: Int(i/Q))
//    dic[Int(i/Q)] = v
//    value2 = v
//}
//
//return value1 + value2
//}
//
//print(infi(i: N))

let input = readLine()!.split(separator: " ").map { Int($0)! }

let N = input[0]
let P = input[1]
let Q = input[2]

var dic = [0:1]

func infi(i: Int) -> Int {
    if let value = dic[i] {
        return value
    }

    dic[i] = infi(i: Int(i/P)) + infi(i: Int(i/Q))
    return dic[i]!
}

print(infi(i: N))
