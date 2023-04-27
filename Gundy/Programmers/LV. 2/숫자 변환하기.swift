struct Queue<T> {

    private var left = [T]()
    private var right: [T]
    var isEmpty: Bool {
        return left.isEmpty && right.isEmpty
    }

    init(_ elements: [T] = []) {
        right = elements
    }

    mutating func enqueue(_ value: T) {
        right.append(value)
    }

    mutating func dequeue() -> T? {
        if left.isEmpty {
            if right.isEmpty {
                return nil
            }
            left = right.reversed()
            right = []
        }
        return left.removeLast()
    }
}

func solution(_ x:Int, _ y:Int, _ n:Int) -> Int {
    var needCheck = Queue([(number: y, count: 0)])

    while needCheck.isEmpty == false {
        let now = needCheck.dequeue()!
        let number = now.number
        let count = now.count
        if number == x {
            return count
        }
        guard number >= x else { continue }
        needCheck.enqueue((number - n, count + 1))
        if number % 2 == 0 {
            needCheck.enqueue((number / 2, count + 1))
        }
        if number % 3 == 0 {
            needCheck.enqueue((number / 3, count + 1))
        }
    }
    
    return -1
}
