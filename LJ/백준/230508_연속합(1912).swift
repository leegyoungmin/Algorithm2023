//연속합(1912)
//https://www.acmicpc.net/problem/1912

let n = Int(readLine()!)!
let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
var d = [Int]()
var maxValue: Int = 0

d.append(input[0])

for index in 1..<input.count {
   maxValue = max(input[index], d[index-1]+input[index])
   d.append(maxValue)
}

print(d.max()!)


/*
 
 d[n] : n까지의 합 중 최대값
 
 새로운 수와 새로운수를 합한 값 중 큰 값 선택하여 d에 추가
 
 */
