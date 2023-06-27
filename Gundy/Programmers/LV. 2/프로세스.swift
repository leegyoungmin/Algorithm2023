struct Queue {
    private var outputs: [(index: Int, priority: Int)] = []
    private var inputs: [(index: Int, priority: Int)]
    private var first: (index: Int, priority: Int)? {
        if outputs.isEmpty {
            return inputs.first
        }
        return outputs.last
    }
    private var isEmpty: Bool {
        return outputs.isEmpty && inputs.isEmpty
    }

    init(_ elements: [(index: Int, priority: Int)]) {
        inputs = elements
    }

    mutating func dequeue() -> (index: Int, priority: Int)? {
        while isHighestElement() == false {
            rotateFirst()
        }
        return removeLast()
    }

    private func isHighestElement() -> Bool {
        guard isEmpty == false else {
            return false
        }
        let container = inputs + outputs
        return container.filter({ return $0.priority > first!.priority }).isEmpty
    }

    private mutating func rotateFirst() {
        rotateIfNeeded()
        inputs.append(outputs.removeLast())
    }

    private mutating func removeLast() -> (index: Int, priority: Int)? {
        rotateIfNeeded()
        return outputs.popLast()
    }

    private mutating func rotateIfNeeded() {
        if outputs.isEmpty {
            if inputs.isEmpty {
                return
            }
            outputs = inputs.reversed()
            inputs.removeAll()
        }
    }
}

func solution(_ priorities:[Int], _ location:Int) -> Int {
    var queue = Queue(priorities.enumerated().map({ ($0.offset, $0.element) }))
    var count = 1
    while queue.dequeue()?.index != location {
        count += 1
    }
    return count
}
