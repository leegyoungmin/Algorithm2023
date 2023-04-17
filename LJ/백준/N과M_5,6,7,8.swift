// N과 M (5)
//https://www.acmicpc.net/problem/15654

//let NM = readLine()!.split(separator: " ").map { Int(String($0))! }
//let N = NM[0], M = NM[1]
//let numbers = readLine()!.split(separator: " ").map { Int(String($0))! }.sorted(by: <)
//var array = [Int]()
//
//recursion(M)
//
//func recursion(_ depth: Int) {
//    if depth == 0 { return }
//    for i in 0..<N {
//        if array.contains(numbers[i]) { continue }
//        array.append(numbers[i])
//        if array.count == M {
//            print(array.map{ String($0) }.joined(separator: " "))
//        } else if depth > 0 {
//            recursion(depth-1)
//        }
//        array.popLast()
//    }
//}


//-------------------------------------------------------------------------
//N과 M (6)   
//https://www.acmicpc.net/problem/15655

//let NM = readLine()!.split(separator: " ").map { Int(String($0))! }
//let N = NM[0], M = NM[1]
//let numbers = readLine()!.split(separator: " ").map { Int(String($0))! }.sorted(by: <)
//var array = [Int]()
//
//recursion(M)
//
//func recursion(_ depth: Int) {
//    if depth == 0 { return }
//    for i in 0..<N {
//        if array.contains(numbers[i]) { continue }
//        if array.isEmpty == false && array.last! > numbers[i] {
//            continue
//        }
//        array.append(numbers[i])
//        if array.count == M {
//            print(array.map{ String($0) }.joined(separator: " "))
//        } else if depth > 0 {
//            recursion(depth-1)
//        }
//        array.popLast()
//    }
//}

//-------------------------------------------------------------------------
//N과 M (7)
//https://www.acmicpc.net/problem/15656

//let NM = readLine()!.split(separator: " ").map { Int(String($0))! }
//let N = NM[0], M = NM[1]
//let numbers = readLine()!.split(separator: " ").map { Int(String($0))! }.sorted(by: <)
//var array = [Int]()
//
//recursion(M)
//
//func recursion(_ depth: Int) {
//    if depth == 0 { return }
//    for i in 0..<N {
//        array.append(numbers[i])
//        if array.count == M {
//            print(array.map{ String($0) }.joined(separator: " "))
//        } else if depth > 0 {
//            recursion(depth-1)
//        }
//        array.popLast()
//    }
//}

//-------------------------------------------------------------------------
//N과 M (8)
//https://www.acmicpc.net/problem/15657
//
//let NM = readLine()!.split(separator: " ").map { Int(String($0))! }
//let N = NM[0], M = NM[1]
//let numbers = readLine()!.split(separator: " ").map { Int(String($0))! }.sorted(by: <)
//var array = [Int]()
//
//recursion(M)
//
//func recursion(_ depth: Int) {
//    if depth == 0 { return }
//    for i in 0..<N {
//        if array.isEmpty == false && array.last! > numbers[i] {
//            continue
//        }
//        array.append(numbers[i])
//        
//        if array.count == M {
//            print(array.map{ String($0) }.joined(separator: " "))
//        } else if depth > 0 {
//            recursion(depth-1)
//        }
//        array.popLast()
//    }
//}
