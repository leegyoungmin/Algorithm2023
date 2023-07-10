struct Queue<DataType> {
    private var output = [DataType]()
    private var input: [DataType]
    var isEmpty: Bool {
        return output.isEmpty && input.isEmpty
    }

    init(_ values: [DataType]) {
        input = values
    }

    mutating func enqueue(_ newElement: DataType) {
        input.append(newElement)
    }

    mutating func dequeue() -> DataType? {
        if output.isEmpty {
            if input.isEmpty {
                return nil
            }
            output = input.reversed()
            input.removeAll()
        }
        return output.removeLast()
    }
}

func solution(_ n:Int, _ roads:[[Int]], _ sources:[Int], _ destination:Int) -> [Int] {
    var links = [Int: [Int]]()
    for road in roads {
        links[road[0], default: []].append(road[1])
        links[road[1], default: []].append(road[0])
    }
    var times = [Int: Int]()
    times[destination] = 0
    var queue = Queue(links[destination]!.map({($0, 1)}))
    while queue.isEmpty == false {
        let point = queue.dequeue()!
        guard times[point.0] == nil else {
            continue
        }
        times[point.0] = point.1
        for nextPoint in links[point.0]! {
            queue.enqueue((nextPoint, point.1 + 1))
        }
    }
    return sources.map({ times[$0] ?? -1 })
}
