struct Queue {
    private var output: [Int] = []
    private var input: [Int]
    var value: Int  = 0
    var numberOfDequeues: Int = 0
    var count: Int {
        return output.count + input.count
    }

    init(_ elements: [Int]) {
        input = elements
    }

    mutating func enqueue(_ element: Int) {
        value += element
        input.append(element)
    }

    mutating func dequeue() {
        numberOfDequeues += 1
        if output.isEmpty {
            output = input.reversed()
            input.removeAll()
        }
        value -= output.removeLast()
    }
}
func solution(_ bridge_length:Int, _ weight:Int, _ truck_weights:[Int]) -> Int {
    var queue = Queue(Array(repeating: 0, count: bridge_length))
    for truck in truck_weights {
        queue.dequeue()
        while queue.value + truck > weight {
            queue.enqueue(0)
            queue.dequeue()
        }
        queue.enqueue(truck)
    }
    return queue.numberOfDequeues + queue.count
}
