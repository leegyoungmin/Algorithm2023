//
//  리코쳇 로봇.swift
//  algorithm2
//
//  Copyright (c) 2023 Minii All rights reserved.

//import Foundation
//
//func solution(_ board:[String]) -> Int {
//  let xAxis = [1, -1, 0, 0], yAxis = [0, 0, 1, -1]
//  
//  let map = board.map { $0.map { String($0) } }
//  var startPoint: (Int, Int, Int) = (0, 0, 0)
//  
//  for x in 0..<map.count {
//    for y in 0..<map[x].count {
//      if map[x][y] == "R" {
//        startPoint = (x, y, 0)
//      }
//    }
//  }
//  
//  var queue = [startPoint]
//  var front = 0
//  
//  let maxX = map.count, maxY = map.first!.count
//  var visit = Array(repeating: Array(repeating: false, count: maxY), count: maxX)
//  
//  visit[startPoint.0][startPoint.1] = true
//  
//  var answer = [Int]()
//  
//  while queue.count != front {
//    let now = queue[front]
//    
//    front += 1
//    
//    if map[now.0][now.1] == "G" {
//      answer.append(now.2)
//    }
//    
//    for i in 0..<xAxis.count {
//      let dx = xAxis[i], dy = yAxis[i]
//      
//      var temp: (x: Int, y: Int) = (now.0, now.1)
//      
//      while true {
//        let next = (temp.x + dx, temp.y + dy)
//        if next.0 < 0 || next.0 > maxX - 1 || next.1 < 0 || next.1 > maxY - 1 { break }
//        let nextValue = map[next.0][next.1]
//        if nextValue == "D" { break }
//        
//        temp = next
//      }
//      
//      if visit[temp.x][temp.y] { continue }
//      visit[temp.x][temp.y] = true
//      queue.append((temp.x, temp.y, now.2 + 1))
//    }
//  }
//  
//  return answer.min() ?? -1
//}
//
//print(solution([".D.R", "....", ".G..", "...D"]))
