//
//  무인도 여행.swift
//  algorithm2
//
//  Copyright (c) 2023 Minii All rights reserved.

// 무인도 여행 (https://school.programmers.co.kr/learn/courses/30/lessons/154540)

import Foundation

func solution(_ maps:[String]) -> [Int] {
  let xAxis = [1, -1, 0, 0], yAxis = [0, 0, 1, -1]
  
  let board = maps.map { $0.map { String($0) } }
  let maxX = board.count, maxY = board.first!.count
  var visit = Array(repeating: Array(repeating: false, count: maxY), count: maxX)
  
  func bfs(to board: [[String]], start: (x: Int, y: Int)) -> Int {
    var queue = [start]
    var front = 0
    visit[start.x][start.y] = true
    
    while queue.count != front {
      let now = queue[front]
      
      front += 1
      
      for i in 0..<xAxis.count {
        let dx = xAxis[i], dy = yAxis[i]
        let lx = now.x + dx, ly = now.y + dy
        
        if lx < 0 || ly < 0 || lx >= maxX || ly >= maxY { continue }
        if visit[lx][ly] { continue }
        if board[lx][ly] == "X" { continue }
        
        visit[lx][ly] = true
        queue.append((lx, ly))
      }
    }
    
    return queue.reduce(0, { partialResult, indexes in
      return partialResult + Int(board[indexes.x][indexes.y])!
    })
  }
  
  var answer = [Int]()
  
  for x in 0..<board.count {
    for y in 0..<board[x].count {
      if visit[x][y] == false && board[x][y] != "X" {
        answer.append(bfs(to: board, start: (x, y)))
      }
    }
  }
  return answer.isEmpty ? [-1] : answer.sorted()
}

print(solution(["XXX","XXX","XXX"]))
