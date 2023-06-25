//n^2 배열 자르기
//https://school.programmers.co.kr/learn/courses/30/lessons/87390

//print(solution(3,2,5))
//print(solution(4, 7, 14)) //[4,3,3,3,4,4,4,4]

func solution(_ n: Int, _ left: Int64, _ right: Int64) -> [Int] {
        
    let leftRow: Int = Int(left) / n            //1행
    let leftCol: Int = Int(left) % n        //3열 부터
    let length: Int = Int(right) - Int(left) + 1 //8개원소 추출
    
    var result = [Int]()
    var row: Int = leftRow
    var col: Int = leftCol
    
    while result.count != length {
        result.append(max(row, col) + 1)
        col += 1
        if col > n-1 {
            col = 0
            row += 1
        }
    }
    
    return result
}


/*
 /*--------------------------------------------------------*/
 오류 2: 시간초과 (test2,4,6,15~20)
 index 0부터 시작
 시작 left 7은 1행 2열
 종료 right 14는 3행 1열
 
 행 : 1,2,3
 열 : 1행 2,3, 2행 0,1,2,3, 3행 0,1
 
 func solution(_ n: Int, _ left: Int64, _ right: Int64) -> [Int] {
         
     let leftRow: Int = Int(left) / n            //1행
     let leftCol: Int = Int(left) % n        //2열 부터
     let rightRow: Int = Int(right) / n          //3행
     let rightCol: Int = Int(right) % n      //1열 까지
     let length: Int = Int(right) - Int(left) + 1 //8개원소 추출
     
     var result = [Int]()
     
     for row in leftRow...rightRow {
         
         if row == leftRow {
             for col in leftCol..<n {
                 let element = max(row, col) + 1
                 result.append(element)
                 
             }
         } else if row == rightRow {
             for col in 0...rightCol {
                 let element = max(row, col) + 1
                 result.append(element)
             }
         } else {
             for col in 0..<n {
                 let element = max(row, col) + 1
                 result.append(element)
             }
         }
     }
     
     return result
 }
 
 
 /*--------------------------------------------------------*/
 오류 1: 시간초과
 n * n 행렬을 만들면 크기가 너무 커서 에러가 남
 left ~ right 범위 배열만 만들면서 푸는 문제.
 행,열 숫자 중 최대값 +1을 해당 원소위치(행,렬)에 값으로 넣어주면 됨
 left, right의 자료형 Int64는 어차피 Int로 변환해서 사용함, 이 문제에서 중요내용 아님.
 
 
 func solution(_ n: Int, _ left: Int64, _ right: Int64) -> [Int] {
     var array = Array(repeating: Array(repeating: 0, count: n), count: n)
     
     for element in 1...n {
         array = generate(element, array)
     }
     
     let flatArray = array.flatMap { $0 }

     return flatArray[Int(left)...Int(right)].map{ Int($0) }
 }

 func generate(_ number: Int, _ array: [[Int]]) -> [[Int]] {
     var newArray = array
     
     for row in 0..<number {
         newArray[row][number-1] = number
     }
     
     for col in 0..<number-1 {
         newArray[number-1][col] = number
     }
     
     return newArray
 }
 */
