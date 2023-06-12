struct MinHeap<T: Comparable> {
    var heap = [T]()

    init() { }
    init(data: T) {
        heap.append(data)
        heap.append(data)
    }

    var first: T? { return heap.count <= 1 ? nil : heap[1] }

    mutating func insert(_ data: T) {
        heap.append(data)

        if heap.count <= 1 { // 1부터 index를 시작시킨다.
            heap.append(data)
        }

        var lastIndex = heap.count - 1

        while lastIndex > 1 && heap[lastIndex] < heap[lastIndex / 2] {
            heap.swapAt(lastIndex, lastIndex / 2)
            lastIndex /= 2
        }
    }

    enum Direction {
        case none
        case left
        case right
    }

    mutating func pop() -> T? {
        if heap.count <= 1 { return nil }

        let result = heap[1]

        heap.swapAt(1, heap.count - 1)
        heap.removeLast()

        func moveDown(_ poppedIndex: Int) -> Direction {
            let leftIndex = (poppedIndex * 2)
            let rightIndex = leftIndex + 1

            if leftIndex >= heap.count {
                return .none
            }

            if rightIndex >= heap.count {
                return heap[leftIndex] < heap[poppedIndex] ? .left : .none
            }

            if heap[leftIndex] > heap[poppedIndex] && heap[rightIndex] > heap[poppedIndex] {
                return .none
            }

            if heap[leftIndex] < heap[poppedIndex] && heap[rightIndex] < heap[poppedIndex] {
                return heap[leftIndex] < heap[rightIndex] ? .left : .right
            }

            return heap[leftIndex] < heap[poppedIndex] ? .left : .right
        }

        var poppedIndex = 1

        while true {
            switch moveDown(poppedIndex) {
            case .none:
                return result

            case .left:
                let leftIndex = poppedIndex * 2 // 4
                heap.swapAt(poppedIndex, leftIndex)
                poppedIndex = leftIndex

            case .right:
                let rightIndex = poppedIndex * 2 + 1 // 5
                heap.swapAt(poppedIndex, rightIndex)
                poppedIndex = rightIndex
            }
        }
    }
}

var heap = MinHeap<Int>()

[8, 12, 13, 16, 16, 21, 23, 9].forEach {
    heap.insert($0)

    print(heap)
}

let _ = heap.pop()
print(heap)
