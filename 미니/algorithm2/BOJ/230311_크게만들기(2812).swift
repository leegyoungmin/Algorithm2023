let NK = readLine()!.split(separator: " ").map { Int($0)! }
let n = NK[0]
var k = NK[1]
var numbers = readLine()!.map { Int(String($0))! }

var stack: [Int] = []

for number in numbers {
    while stack.isEmpty == false && stack.last! < number && k > 0 {
        stack.removeLast()
        k -= 1
    }
    
    stack.append(number)
}

(0..<k).forEach { _ in
    stack.removeLast()
}
print(stack.map { String($0) }.joined())
