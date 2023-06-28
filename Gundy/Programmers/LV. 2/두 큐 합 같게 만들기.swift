struct Queue {
    private var output: [Int] = []
    private var input: [Int]

    init(_ values: [Int]) {
        input = values
    }

    mutating func enqueue(_ newElement: Int) {
        input.append(newElement)
    }

    mutating func dequeue() -> Int? {
        if output.isEmpty {
            if input.isEmpty {
                return nil
            }
            output = input.reversed()
            input.removeAll()
        }
        return output.popLast()
    }
}

func solution(_ queue1:[Int], _ queue2:[Int]) -> Int {
    var result = 0
    var leftQueue = Queue(queue1)
    var leftValue = queue1.reduce(0, +)
    var rightQueue = Queue(queue2)
    var rightValue = queue2.reduce(0, +)
    guard (leftValue + rightValue) % 2 == 0 else {
        return -1
    }
    let target = (leftValue + rightValue) / 2
    for _ in 1...queue1.count * 4 {
        guard leftValue != rightValue else {
            break
        }
        if leftValue < rightValue {
            let number = rightQueue.dequeue()!
            leftQueue.enqueue(number)
            leftValue += number
            rightValue -= number
        } else {
            let number = leftQueue.dequeue()!
            rightQueue.enqueue(number)
            rightValue += number
            leftValue -= number
        }
        result += 1
    }
    return leftValue == target ? result : -1
}
