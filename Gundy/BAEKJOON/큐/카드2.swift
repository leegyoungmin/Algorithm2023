final class Node {
    let value: Int
    var next: Node?
    
    init(_ value: Int) {
        self.value = value
    }
}

struct Queue {
    var first: Node?
    var last: Node?
    
    mutating func enqueue(_ value: Int) {
        if first == nil {
            first = Node(value)
            last = first
        } else {
            last?.next = Node(value)
            last = last?.next
        }
    }
    
    @discardableResult mutating func dequeue() -> Int? {
        let node = first
        first = first?.next
        return node?.value
    }
}

func solution() {
    let size: Int = Int(readLine()!)!
    var numbers = Queue()
    for number in 1...size {
        numbers.enqueue(number)
    }
    for _ in 1..<size {
        numbers.dequeue()
        let number = numbers.dequeue()!
        numbers.enqueue(number)
    }
    print(numbers.dequeue()!)
}

solution()
