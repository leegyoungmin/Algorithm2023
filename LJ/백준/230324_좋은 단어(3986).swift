//좋은 단어(3986)
//https://www.acmicpc.net/problem/3986

let N: Int = Int(readLine()!)!
var string: String = ""
var count: Int = 0

for _ in 1...N {
    string = readLine()!
    if solution(string) == true {
        count += 1
    }
}

print(count)

func solution(_ s: String) -> Bool {
    let array: [String] = s.map{ String($0) }
    var stack = [String]()
    for idx in 0..<array.count {
        if array[idx] == "A" {
            if stack.last == "A" {
                stack.removeLast()
            } else {
                stack.append(array[idx])
            }
        } else if array[idx] == "B"{
            if stack.last == "B" {
                stack.removeLast()
            } else {
                stack.append(array[idx])
            }
        }
    }
    
    return stack.isEmpty ? true : false
}
