//
//  소수찾기.swift
//  Algorithm
//
//  Copyright (c) 2023 Minii All rights reserved.

//import Foundation
//
//func solution(_ numbers: String) -> Int {
//    let values: [Character] = Array(numbers.map { $0 })
//    var answer: Set<Int> = []
//
//    func dfs(start: Int, values: [Character], result: String, visit: [Bool]) {
//        if let number = Int(result), isPrime(to: number) { // 소수 판별
//            answer.insert(number)
//        }
//
//        if start == numbers.count { return }
//
//        var result = result, visit = visit
//
//        for idx in 0..<values.count {
//            let char = values[idx]
//            if visit[idx] { continue }
//
//            result.append(char)
//            visit[idx] = true
//
//            dfs(start: start + 1, values: values, result: result, visit: visit)
//
//            result.removeLast()
//            visit[idx] = false
//        }
//    }
//
//
//    for start in 0..<numbers.count {
//        let visit = Array(repeating: false, count: values.count)
//        dfs(start: start, values: values, result: "", visit: visit)
//    }
//
//    return answer.count
//}
//
//func isPrime(to value: Int) -> Bool {
//    if value <= 1 { return false }
//    if (2..<4) ~= value { return true }
//
//    for i in 2...Int(sqrt(Double(value))) {
//        if value % i == 0 { return false }
//    }
//
//    return true
//}
//
//print(solution("011"))
