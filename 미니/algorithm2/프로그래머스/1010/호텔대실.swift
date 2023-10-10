//
//  호텔대실.swift
//  algorithm2
//
//  Copyright (c) 2023 Minii All rights reserved.

import Foundation

func solution(_ book_time:[[String]]) -> Int {
  var times: [(Int, Int)] = []
  var rooms: [Int] = Array(repeating: 0, count: book_time.count)
  
  for time in book_time {
    let start = time[0].split(separator: ":"), end = time[1].split(separator: ":")
    
    let sHour = Int(start[0])! * 60, sMinute = Int(start[1])!
    let eHour = Int(end[0])! * 60, eMinute = Int(end[1])!
    
    times.append((sHour + sMinute, eHour + eMinute))
  }
  times.sort(by: { $0.0 < $1.0 })
  
  var answer: Int = .zero
  var lastTime: Int = .zero
  
  for index in 0..<times.count {
    if rooms[index] == .zero {
      answer += 1
      rooms[index] = answer
      lastTime = times[index].1 + 10
    } else {
      continue
    }
    
    for jdx in index + 1..<times.count {
      if rooms[jdx] == .zero && times[jdx].0 >= lastTime {
        rooms[jdx] = answer
        lastTime = times[jdx].1 + 10
      }
    }
  }
  return answer
}

let values = [["15:00", "17:00"], ["16:40", "18:20"], ["14:20", "15:20"], ["14:10", "19:20"], ["18:20", "21:20"]]
print(solution(values))
