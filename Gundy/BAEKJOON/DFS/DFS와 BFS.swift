struct Queue {
    private var left: [Int] = []
    private var right: [Int] = []
    var isEmpty: Bool {
        return left.isEmpty && right.isEmpty
    }
    
    init(elements: [Int]) {
        right = elements
    }
    
    mutating func enqueue(_ element: Int) {
        right.append(element)
    }
    mutating func dequeue() -> Int? {
        if left.isEmpty {
            left = right.reversed()
            right = []
        }
        return left.popLast()
    }
}

func solution() {
    var link: [Int : Set<Int>] = [:]
    let input: [Int] = readLine()!.split(separator: " ").compactMap({ Int($0) })
    for _ in 1...input[1] {
        let linking: [Int] = readLine()!.split(separator: " ").compactMap({ Int($0) })
        link[linking[0], default: []].insert(linking[1])
        link[linking[1], default: []].insert(linking[0])
    }
    dfs(startPoint: input[2], link)
    bfs(startPoint: input[2], link)
}

func dfs(startPoint: Int, _ link: [Int : Set<Int>]) {
    var visited: [Int] = []
    var needVisit: [Int] = [startPoint]
    while needVisit.isEmpty == false {
        let point: Int = needVisit.removeLast()
        guard visited.contains(point) == false else { continue }
        visited.append(point)
        guard let numbers = link[point] else { continue }
        for number in numbers.sorted(by: >) {
            needVisit.append(number)
        }
    }
    var result: String = ""
    for number in visited {
        if result.isEmpty {
            result = number.description
        } else {
            result += " " + number.description
        }
    }
    print(result)
}

func bfs(startPoint: Int, _ link: [Int : Set<Int>]) {
    var visited: [Int] = []
    var needVisit: Queue = Queue(elements: [startPoint])
    while needVisit.isEmpty == false {
        let point: Int = needVisit.dequeue()!
        guard visited.contains(point) == false else { continue }
        visited.append(point)
        guard let numbers = link[point] else { continue }
        for number in numbers.sorted() {
            needVisit.enqueue(number)
        }
    }
    var result: String = ""
    for number in visited {
        if result.isEmpty {
            result = number.description
        } else {
            result += " " + number.description
        }
    }
    print(result)
}

solution()
