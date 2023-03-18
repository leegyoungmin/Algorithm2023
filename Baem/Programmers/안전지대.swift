
//첫 번째 정답
//func solution(_ board:[[Int]]) -> Int {
//    let n = board.count
//
//    if n == 1 {
//        if board[0][0] == 1 {
//            return 0
//        } else {
//            return 1
//        }
//    }
//
//    var sol = Array(repeating: Array(repeating: true, count: n + 2), count: n + 2)
//
//    for i in 1...n {
//        for j in 1...n {
//            if board[i - 1][j - 1] == 1 {
//                sol[i-1][j-1] = false
//                sol[i][j-1] = false
//                sol[i+1][j-1] = false
//
//                sol[i-1][j] = false
//                sol[i][j] = false
//                sol[i+1][j] = false
//
//                sol[i-1][j+1] = false
//                sol[i][j+1] = false
//                sol[i+1][j+1] = false
//            }
//        }
//    }
//
//    var count = 0
//    for i in 1...n {
//        for j in 1...n {
//            if sol[i][j] == true {
//                count += 1
//            }
//        }
//    }
//
//    return count
//}

/*
 테스트 1 〉    통과 (0.03ms, 16.5MB)
 테스트 2 〉    통과 (0.02ms, 16.2MB)
 테스트 3 〉    통과 (0.03ms, 16.5MB)
 테스트 4 〉    통과 (0.02ms, 16.5MB)
 테스트 5 〉    통과 (0.03ms, 16.5MB)
 테스트 6 〉    통과 (0.04ms, 16.5MB)
 테스트 7 〉    통과 (0.03ms, 16.2MB)
 테스트 8 〉    통과 (0.01ms, 16.1MB)
 테스트 9 〉    통과 (0.01ms, 16.3MB)
 테스트 10 〉    통과 (0.02ms, 16.5MB)
 테스트 11 〉    통과 (0.03ms, 16.4MB)
 테스트 12 〉    통과 (0.03ms, 16.4MB)
 테스트 13 〉    통과 (0.02ms, 16.3MB)
 테스트 14 〉    통과 (0.04ms, 16.5MB)
 */

//두번째 반복문만 바꿔줌
func solution(_ board:[[Int]]) -> Int {
    let n = board.count
    
    if n == 1 {
        if board[0][0] == 1 {
            return 0
        } else {
            return 1
        }
    }
    
    var sol = Array(repeating: Array(repeating: true, count: n + 2), count: n + 2)
    
    for i in 1...n {
        for j in 1...n {
            if board[i - 1][j - 1] == 1 {
                for k in -1...1 {
                    for l in -1...1 {
                        sol[i+k][l+j] = false
                    }
                }
            }
        }
    }
    
    var count = 0
    for i in 1...n {
        for j in 1...n {
            if sol[i][j] == true {
                count += 1
            }
        }
    }
    
    return count
}

/*
 테스트 1 〉    통과 (0.03ms, 16.4MB)
 테스트 2 〉    통과 (0.03ms, 16.5MB)
 테스트 3 〉    통과 (0.05ms, 16.3MB)
 테스트 4 〉    통과 (0.04ms, 16.2MB)
 테스트 5 〉    통과 (0.03ms, 16.5MB)
 테스트 6 〉    통과 (0.04ms, 16.5MB)
 테스트 7 〉    통과 (0.03ms, 16.3MB)
 테스트 8 〉    통과 (0.01ms, 16.3MB)
 테스트 9 〉    통과 (0.01ms, 16.5MB)
 테스트 10 〉    통과 (0.03ms, 16.2MB)
 테스트 11 〉    통과 (0.03ms, 16.4MB)
 테스트 12 〉    통과 (0.04ms, 16.4MB)
 테스트 13 〉    통과 (0.03ms, 16.5MB)
 테스트 14 〉    통과 (0.05ms, 16.5MB)
 */



// -> 반복문을 쓰면 시간이 조금더 늘어나는 것 같음
print(solution([[1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1]]))

print(solution([[0,0],[0,0]]))

// board == n X n
/*
 -> 요론 느낌
 -> 1일때만 예외
 
 * * * * * * *
 * o o o o o *
 * o o o o o *
 * o o o o o *
 * o o o o o *
 * o o o o o *
 * * * * * * *
 
 5x5 -
 
 */
