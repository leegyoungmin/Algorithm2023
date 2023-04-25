var input = readLine()!.split(separator: " ").compactMap({ Int($0) })
var result = [[Int]]()

while input[0] != 0 {
    recursion(current: 1, numbers: [input[1]])
    recursion(current: 1, numbers: [])
    for numbers in result {
        print(numbers.map({ "\($0)" }).joined(separator: " "))
    }
    print()
    input = readLine()!.split(separator: " ").compactMap({ Int($0) })
    result = []
}

func recursion(current index: Int, numbers: [Int]) {
    guard numbers.count < 6 else {
        result.append(numbers)
        return
    }
    guard index < input[0] else { return }

    recursion(current: index + 1, numbers: numbers + [input[index + 1]])
    recursion(current: index + 1, numbers: numbers)
}
