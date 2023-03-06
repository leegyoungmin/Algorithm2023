struct Stack<DataType> {
    private(set) var values: [DataType] = []
    
    mutating func push(_ value: DataType) {
        values.append(value)
    }
    
    mutating func pop() -> DataType? {
        return values.popLast()
    }
}

var stack = Stack<Int>()

func solution() {
    let input = readLine()!
    
    switch input {
    case "0":
        stack.pop()
    default:
        stack.push(Int(input)!)
    }
}

let count = Int(readLine()!)!

for _ in 1...count {
    solution()
}

print(stack.values.reduce(0, { partialResult, number in
    partialResult + number
}))
