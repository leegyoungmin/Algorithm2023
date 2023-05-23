//탑(2493)
//https://www.acmicpc.net/problem/2493

let n = Int(readLine()!)!
let towers = readLine()!.split(separator: " ").map{ Int(String($0))! }

var indexStack = [0]
var result = "0 "


func solution() {
    
    for i in 1..<n {
        while indexStack.isEmpty == false, towers[indexStack.last!] < towers[i] {
            let _ = indexStack.removeLast()
        }
        
        if indexStack.isEmpty == false {
            result += "\(indexStack.last! + 1)" + " "
        } else {
            result += "0" + " "
        }
        indexStack.append(i)
    }
}

solution()
print(result)

/*

//오답 1: 시간초과, 시간복잡도 O(N^2)를 가짐
import Foundation

let N: Int = Int(readLine()!)! //5
var towers: [Int] = readLine()!.split(separator: " ").map { Int($0)! } //6 9 5 7 4
var result: [Int] = []

var sendTower = 0
var receiveTower = 0

while towers.count > 0 {
   sendTower = towers.removeLast() //6
   var index: Int = towers.count - 1 // index = -1
   
   for _ in 0...towers.count { //0
       if towers.count > 0 {
           receiveTower = towers[index]
       }
       
       if receiveTower > sendTower {  // ? > 6
           result.append(index+1)
           break
       } else if index > 0 {
           index -= 1
       } else {
           result.append(0)
       }
   }
}
result.popLast()
result = result.reversed()
result.forEach {
   print($0, terminator: " ")
}

*/
