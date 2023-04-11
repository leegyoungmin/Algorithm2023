struct Queue {
    private var left: [Int] = []
    private var right: [Int] = []
    var value: Int  = 0
    var numberOfDequeues: Int = 0
    
    init(_ elements: [Int]) {
        right = elements
    }
    
    mutating func enqueue(_ element: Int) {
        value += element
        right.append(element)
    }
    
    mutating func dequeue() {
        numberOfDequeues += 1
        if left.isEmpty {
            left = right.reversed()
            right = []
        }
        value -= left.removeLast()
    }
}
func solution(_ bridge_length:Int, _ weight:Int, _ truck_weights:[Int]) -> Int {
    var queue: Queue = Queue(Array(repeating: 0, count: bridge_length))
    for truck in truck_weights {
        if queue.value + truck <= weight {
            queue.dequeue()
            queue.enqueue(truck)
        } else {
            while true {
                queue.dequeue()
                if queue.value + truck <= weight {
                    queue.enqueue(truck)
                    break
                } else {
                    queue.enqueue(0)
                }
            }
        }
    }
    while queue.value > 0 {
        queue.dequeue()
    }
    return queue.numberOfDequeues
}
