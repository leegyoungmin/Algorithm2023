let n = Int(readLine()!)!
let listLength = Int(readLine()!)!

var list = Array(repeating: [Int](), count: n + 1)

for _ in 1...listLength {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    list[input[0]].append(input[1])
    list[input[1]].append(input[0])
}

var result = Set<Int>()

for index in list[1] {
    result.insert(index)
    for i in list[index] {
        result.insert(i)
    }
}

if result.contains(1) {
    print(result.count - 1)
} else {
    print(result.count)
}
