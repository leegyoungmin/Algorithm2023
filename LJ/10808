//10808
//알파벳 개수
//https://www.acmicpc.net/problem/10808

import Foundation

var alphabetCountArray: [Int] = Array(repeating: 0, count: 26)

let s = readLine()!
let inputArray: [Character] = s.map { Character(extendedGraphemeClusterLiteral: $0) }

let asciiArray: [Int] = inputArray.map { Int($0.asciiValue!) }

asciiArray.forEach {
    alphabetCountArray[$0 - 97] += 1
}

let resultArray = alphabetCountArray.compactMap {
    String($0)
}

print(resultArray.joined(separator: " "))
