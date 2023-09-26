////
////  순위.swift
////  Algorithm
////
////  Copyright (c) 2023 Minii All rights reserved.
//
//import Foundation
//
///*
// 
// 순위를 정확하게 아는 방법은 무엇인가...?
// 
// (나보다 강한 사람의 수 + 나보다 약한 사람의 수) = (전체 인원 - 1)
// 내 위의 몇명있고, 내 밑에 몇명있다. -> 근데 그 인원을 다합쳐서 전체 인원이 된다.
// 
// 나를 이긴 친구들이 몇명이지...? -> x
// 내가 이긴 친구들은 몇명이지? + 내가 이긴 친구들이 이긴 놈들은 몇명이지? -> y
// */
//
//func solution(_ n:Int, _ results:[[Int]]) -> Int {
//    var graph = [[Int]](repeating: [Int](), count: n + 1)
//
//    for result in results {
//        let first = result[0], second = result[1]
//        
//        graph[first].append(second)
//    }
//
//    var weak = Array(repeating: 0, count: n + 1)
//    var strong = Array(repeating: 0, count: n + 1)
//    
//    var visit = Array(repeating: false, count: n + 1)
//    var weakerCount = 0
//
//    func dfs(_ cur: Int) {
//        visit[cur] = true
//
//        for weaker in graph[cur] {
//            if visit[weaker] { continue }
//            
//            strong[weaker] += 1
//            weakerCount += 1
//            
//            dfs(weaker)
//        }
//    }
//
//    for i in 1...n {
//        visit = Array(repeating: false, count: n + 1)
//        weakerCount = 0
//        
//        dfs(i)
//
//        weak[i] = weakerCount
//    }
//
//    let result = sum(weak, strong)
//    var answer = 0
//    
//    
//    /*           1   2   3   4   5
//     강한 사람 : 0   3   1   0   4
//     약한 사람 : 2   1   2   3   0
//     ------------------------------
//                2   4   3   3   4
//     
//     */
//
//    for idx in 0..<n {
//        if result[idx] == n - 1 {
//            answer += 1
//        }
//    }
//    
////    return result.filter { $0 == (n - 1) }.count
//    return answer
//}
//
//func sum(_ lhs: [Int], _ rhs: [Int]) -> [Int] {
//    var result = [Int]()
//
//    for idx in 1..<lhs.count {
//        let i = lhs[idx], j = rhs[idx]
//        result.append(i + j)
//    }
//
//    return result
//}
//
//print(solution(5, [[4, 3], [4, 2], [3, 2], [1, 2], [2, 5]]))
