
func solution(_ places:[[String]]) -> [Int] {
    var result = [Int]()
    
    for array in places {
        result.append(sol(array))
    }
    
    return result
}

func sol(_ array: [String]) -> Int {
    let convert = array.map { Array($0).map{String($0)} }
    var map = Array(repeating: Array(repeating: "X", count: 9), count: 9)
    
    for j in 2...6 {
        for i in 2...6 {
            map[j][i] = convert[j-2][i-2]
        }
    }
    
    let axisX = [0, -1, 1, 0]
    let axisY = [-1, 0, 0, 1]
    let axisXX = [0, -2, 2, 0]
    let axisYY = [-2, 0, 0, 2]
    
    let diagonalX = [-1, 1, -1, 1]
    let diagonalY = [-1, -1, 1, 1]
    
    let personX1 = [-1, 0, 0, 1]
    let personY1 = [0, -1, 1, 0]
    let personX2 = [0, 1, -1, 0]
    let personY2 = [-1, 0, 0, 1]
    
    for j in 2...6 {
        for i in 2...6 {
            if map[j][i] == "P" {
                for z in 0...3 {
                    
                    if map[axisY[z]+j][axisX[z]+i] == "O" {
                        if map[axisYY[z]+j][axisXX[z]+i] == "P" {
//                            print(i, j, z, 1)
                            return 0
                        }
                    } else if map[axisY[z]+j][axisX[z]+i] == "P" {
//                        print(i, j, z, 2)
                        return 0
                    }
                    
                    if map[diagonalY[z]+j][diagonalX[z]+i] == "P" {
                        if map[personY1[z]+j][personX1[z]+i] == "X" && map[personY2[z]+j][personX2[z]+i] == "X" {
                            continue
                        } else {
//                            print(i, j, z, 3)
                            return 0
                        }
                    }
                }
            }
        }
    }
    
    return 1
}

//print(sol(["POOOP", "OXXOX", "OPXPX", "OOXOX", "POXXP"]))

print(solution([["POOOP", "OXXOX", "OPXPX", "OOXOX", "POXXP"], ["POOPX", "OXPXP", "PXXXO", "OXXXO", "OOOPP"], ["PXOPX", "OXOXP", "OXPOX", "OXXOP", "PXPOX"], ["OOOXX", "XOOOX", "OOOXX", "OXOOX", "OOOOO"], ["PXPXP", "XPXPX", "PXPXP", "XPXPX", "PXPXP"]]))


