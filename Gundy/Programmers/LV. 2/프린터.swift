struct Deque {
    private var head: [Int] = []
    private var tail: [Int] = []
    var first: Int? {
        return head.isEmpty ? head.last : tail.first
    }
    var count: Int {
        return head.count + tail.count
    }
    var isEmpty: Bool {
        return head.isEmpty && tail.isEmpty
    }
    
    init(_ elements: [Int]) {
        tail = elements
    }
    
    func sortedByPriority() -> [Int] {
        return (head + tail).sorted(by: >)
    }
    
    @discardableResult mutating func removeFirst() -> Int? {
        if head.isEmpty {
            head = tail.reversed()
            tail = []
        }
        return head.popLast()
    }
    
    mutating func insertAtTail(_ element: Int) {
        tail.append(element)
    }
}

func solution(_ priorities:[Int], _ location:Int) -> Int {
    var deque: Deque = Deque(priorities)
    var location: Int = location
    var result: Int = 0
    if location == 0 {
        let first: Int = deque.removeFirst()!
        if deque.isEmpty == false,
           deque.sortedByPriority().first! > first {
            deque.insertAtTail(first)
        } else {
            return 1
        }
        location = deque.count - 1
    }
    while location != 0 {
        let first: Int = deque.removeFirst()!
        if deque.isEmpty == false,
           deque.sortedByPriority().first! > first {
            deque.insertAtTail(first)
        } else {
            result += 1
        }
        location -= 1
        if location == 0 {
            let first: Int = deque.removeFirst()!
            if deque.isEmpty == false,
               deque.sortedByPriority().first! > first {
                deque.insertAtTail(first)
            } else {
                result += 1
                break
            }
            location = deque.count - 1
        }
    }
    return result
}
