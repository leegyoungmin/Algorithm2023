//종이의 개수(1780)
//https://www.acmicpc.net/problem/1780


//두번째 푼 것
let n = Int(readLine()!)!
var paper = Array(repeating: [Int](), count: n)
var minusCount: Int = 0
var zeroCount: Int = 0
var plusCount: Int = 0

for i in 0..<n {
    let input = readLine()!.split(separator: " ").compactMap { Int($0)! }
    paper[i] = input
}

func solution(_ point: (Int, Int), length: Int) {

    let isSameNumber = checkElement(point, length)
    if isSameNumber == true {
        switch paper[point.0][point.1] {
        case -1:
            minusCount += 1
        case 0:
            zeroCount += 1
        case 1:
            plusCount += 1
        default:
            break
        }
        return
    } else {
        solution((point.0, point.1), length: length/3)
        solution((point.0, point.1+length/3), length: length/3)
        solution((point.0, point.1+length/3*2), length: length/3)

        solution((point.0+length/3, point.1), length: length/3)
        solution((point.0+length/3, point.1+length/3), length: length/3)
        solution((point.0+length/3, point.1+length/3*2), length: length/3)

        solution((point.0+length/3*2, point.1), length: length/3)
        solution((point.0+length/3*2, point.1+length/3), length: length/3)
        solution((point.0+length/3*2, point.1+length/3*2), length: length/3)
    }
}

func checkElement(_ point: (Int, Int), _ length: Int) -> Bool {
    let target = paper[point.0][point.1]

    for i in point.0..<(point.0+length) {
        for j in point.1..<(point.1+length) {
            if paper[i][j] == target {
                continue
            } else {
                return false
            }
        }
    }
    return true
}

solution((0,0),length: n)
print("\(minusCount)\n\(zeroCount)\n\(plusCount)")

/*
 차이점
 - -1, 0, 1인 경우를 if문 -> switch문으로 푼 것
 - 모든 원소의 값이 같은지 여부를 판단하는 checkElement함수의 전달인자를 행,렬 튜플로 묶어준 것
 
 */

//let n = Int(readLine()!)!
//var paper = [[Int]]()
//var minusCount: Int = 0
//var zeroCount: Int = 0
//var plusCount: Int = 0
//
//for _ in 0..<n {
//    let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
//    paper.append(input)
//}
//
//func recursion(_ startRow: Int, _ startCol: Int, _ length: Int) {
//
//    let flag = checkElement(startRow, startCol, length)
//    if flag == true {
//        if paper[startRow][startCol] == -1 {
//            minusCount += 1
//        } else if paper[startRow][startCol] == 0 {
//            zeroCount += 1
//        } else if paper[startRow][startCol] == 1 {
//            plusCount += 1
//        }
//        return
//    } else {
//        recursion(startRow, startCol, length/3)
//        recursion(startRow, startCol+length/3, length/3)
//        recursion(startRow, startCol+length/3*2, length/3)
//
//        recursion(startRow+length/3, startCol, length/3)
//        recursion(startRow+length/3, startCol+length/3, length/3)
//        recursion(startRow+length/3, startCol+length/3*2, length/3)
//
//        recursion(startRow+length/3*2, startCol, length/3)
//        recursion(startRow+length/3*2, startCol+length/3, length/3)
//        recursion(startRow+length/3*2, startCol+length/3*2, length/3)
//    }
//
//}
//
//func checkElement(_ startRow: Int, _ startCol: Int, _ length: Int) -> Bool {
//    let firstElement = paper[startRow][startCol]
//
//    for i in startRow..<startRow+length {
//        for j in startCol..<startCol+length {
//            if paper[i][j] != firstElement {
//                return false
//            }
//        }
//    }
//
//    return true
//}
//
//recursion(0,0,n)
//print("\(minusCount)\n\(zeroCount)\n\(plusCount)")
