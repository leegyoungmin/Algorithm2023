//
//  부분 수열의 합.swift
//  Algorithm
//
//  Copyright (c) 2023 Minii All rights reserved.

//let NS = readLine()!.split(separator: " ").map { Int(String($0))! }
//let n = NS[0], s = NS[1]
//
//let map = readLine()!.split(separator: " ").map { Int(String($0))! }
//var visit = Array(repeating: false, count: 21)
//var sum: Int = 0
//
//var count: Int = 0
//
//func recur(_ depth: Int, start: Int) {
//  if sum == s && depth >= 1 {
//    count += 1
//  }
//  
//  for idx in start..<n {
//    let number = map[idx]
//    
//    if visit[idx] { continue }
//    
//    visit[idx] = true
//    sum += number
//    
//    recur(depth + 1, start: idx)
//    
//    visit[idx] = false
//    sum -= number
//  }
//}
//
//recur(0, start: 0)
//print(count)
