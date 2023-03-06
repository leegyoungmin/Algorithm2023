var stack: [Int] = []

func solution() {
    let input = readLine()!
    
    switch input {
    case "pop":
        guard let poppedElement = stack.popLast() else {
            print(-1)
            return
        }
        print(poppedElement)
    case "size":
        print(stack.count)
    case "empty":
        let value: Int = stack.isEmpty ? 1 : 0
        print(value)
    case "top":
        guard let last = stack.last else {
            print(-1)
            return
        }
        print(last)
    default:
        var text = input
        text.removeFirst(5)
        stack.append(Int(text)!)
    }
}

let count = Int(readLine()!)!

for _ in 1...count {
    solution()
}
