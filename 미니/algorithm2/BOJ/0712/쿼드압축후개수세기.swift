//
//  쿼드압축후개수세기.swift
//  Algorithm
//
//  Copyright (c) 2023 Minii All rights reserved.
        

import Foundation

func solution(_ arr:[[Int]]) -> [Int] {
    let map = arr
    
    func recursion(n: Int, x: Int, y: Int) -> String {
        if checkCompression(row: x, col: y, length: n) { // 반환되는 조건이 먼저 나온다. -> 재귀의 흐름을 끝낼 조건은 무엇인가
            return "\(map[x][y])"
        }
        
        let half = (n / 2)
        
        var result: String = ""
        result += recursion(n: half, x: x, y: y) // 자기 자신을 부른다. -> 자신의 함수를 불러서 어떤 결과를 얻을 것인가?
        result += recursion(n: half, x: x, y: y + half)
        result += recursion(n: half, x: x + half, y: y)
        result += recursion(n: half, x: x + half, y: y + half)
        
        return result
    }
    
    func checkCompression(row: Int, col: Int, length: Int) -> Bool {
        let base = map[row][col]
        
        for row in row..<(row + length) {
            for col in col..<(col + length) {
                if map[row][col] != base {
                    return false
                }
            }
        }
        
        return true
    }
    
    let result = recursion(n: arr.count, x: 0, y: 0)
    var zeroCount = 0, oneCount = 0
    
    for char in result {
        if char == "0" {
            zeroCount += 1
        } else {
            oneCount += 1
        }
    }
    
    return [zeroCount, oneCount]
}

let arr = [[1,1,1,1,1,1,1,1],[0,1,1,1,1,1,1,1],[0,0,0,0,1,1,1,1],[0,1,0,0,1,1,1,1],[0,0,0,0,0,0,1,1],[0,0,0,0,0,0,0,1],[0,0,0,0,1,0,0,1],[0,0,0,0,1,1,1,1]]
print(solution(arr))
