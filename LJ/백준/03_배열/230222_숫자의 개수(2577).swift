/*
2577
숫자의 개수
https://www.acmicpc.net/problem/2577
*/

import Foundation

var numberCountArray: [Int] = Array(repeating: 0, count: 10)

let numberA: Int = Int(readLine()!)!
let numberB: Int = Int(readLine()!)!
let numberC: Int = Int(readLine()!)!

let result: Int = numberA * numberB * numberC

let charArray: [Character] = String(result).map { Character(extendedGraphemeClusterLiteral: $0) }
let intArray: [Int] = charArray.compactMap { number in
    Int(String(number))
}

intArray.forEach { value in
    numberCountArray[value] += 1
}

numberCountArray.forEach {
    print($0)
}
