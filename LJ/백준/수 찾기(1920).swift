//수 찾기(1920)
//https://www.acmicpc.net/problem/1920

let n = Int(readLine()!)!
var numbers = readLine()!.split(separator: " ").map{ Int(String($0))! }
let m = Int(readLine()!)!
let targets = readLine()!.split(separator: " ").map{ Int(String($0))! }

numbers.sort() // 1 2 3 4 5

func solution(_ target: Int) -> Bool {
    var start: Int = 0
    var end: Int = numbers.count-1
    var midIndex = (start+end)/2
    
    while start <= end {
        let midValue = numbers[midIndex]
        if target == midValue {
            return true
        } else if target > midValue {
            start = midIndex + 1
        } else if target < midValue {
            end = midIndex - 1
        }
        midIndex = (start+end)/2
    }
    return false
}

targets.forEach {
    let result = solution($0) == true ? 1 : 0
    print(result)
}

/*
 
 "index값"인 start, end, mid와
 "index가 가리키는 값" numbers[start], numbers[end], numbers[mid]를 구분해야 한다.
 
 */
