//
//  두원사이의정수쌍.swift
//  algorithm2
//
//  Copyright (c) 2023 Minii All rights reserved.

//import Foundation
//
//func solution(_ targets:[[Int]]) -> Int {
//  var answer = 0
//  var sorted = targets.sorted(by: { $0[1] < $1[1] })
//  
//  var s = 0
//  var e = 0
//  
//  for sort in sorted {
//    if sort[0] >= e {
//      answer += 1
//      e = sort[1]
//    }
//  }
//  
//  return answer
//}
//
//print(solution([[4,5],[4,8],[10,14],[11,13],[5,12],[3,7],[1,4]]))
