func solution() {
    let totalComputer = Int(readLine()!)!
    let pair = Int(readLine()!)!

    var map = Array(repeating: [Int](), count: totalComputer + 1)

    if pair == 0 {
        print(0)
        return
    }

    for _ in 1...pair {
        let input = readLine()!.split(separator: " ").map { Int($0)! }
        
        map[input[0]].append(input[1])
        map[input[1]].append(input[0])
    }

    for i in 0...totalComputer {
        map[i].sort()
    }

    var stack = [Int]()
    var result = [Int]()
    stack.append(1)

    while !stack.isEmpty {
        let last = stack.popLast()!
        
        if result.contains(last) {
            continue
        }
        
        result.append(last)
        
        for i in map[last].reversed() {
            stack.append(i)
        }
    }

    print(result.count - 1)

}
solution()
