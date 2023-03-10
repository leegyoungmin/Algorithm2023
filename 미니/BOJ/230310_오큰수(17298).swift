let count = Int(readLine()!)!
var numbers = readLine()!.split(separator: " ").map { Int($0)! }

var stack: [Int] = []

for index in 0..<count {
    while stack.isEmpty == false && numbers[stack.last!] < numbers[index] {
        let idx = stack.removeLast()
        numbers[idx] = numbers[index]
    }

    stack.append(index)
}

for i in stack {
    numbers[i] = -1
}

print(numbers.map { String($0) }.joined(separator: " "))
