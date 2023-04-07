func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    var result: [Int] = []
    for command in commands {
        result.append(makeResult(array, command))
    }
    return result
}

func makeResult(_ numbers: [Int], _ command: [Int]) -> Int {
    var result: [Int] = []
    for index in (command[0] - 1)...(command[1] - 1) {
        result.append(numbers[index])
    }
    return result.sorted()[command[2] - 1]
}
