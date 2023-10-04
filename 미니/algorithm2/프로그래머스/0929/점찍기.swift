//
//  점찍기.swift
//  algorithm2
//
//  Copyright (c) 2023 Minii All rights reserved.
//import Foundation
//
///*
// 
// x^2 + y^2 <= d^2
// 
// */
//
//func solution(_ k: Int, _ d: Int) -> Int64 {
//  var answer = 0
//  
//  for x in 0...d/k {
//    let value = sqrt(pow(Double(d) / Double(k), 2) - pow(Double(x), 2)) + 1
//    answer += Int(value)
//  }
//  return Int64(answer)
//}
//
//print(solution(2, 4))
