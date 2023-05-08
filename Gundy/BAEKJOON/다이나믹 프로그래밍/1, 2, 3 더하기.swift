func solution() {
    var result = Set<[Int]>()
    let number = Int(readLine()!)!

    func recursion(_ numbers: [Int], _ partialResult: Int) {
        guard partialResult < number else {
            result.insert(numbers)
            return
        }
        recursion(numbers + [1], partialResult + 1)
        if partialResult + 2 <= number {
            recursion(numbers + [2], partialResult + 2)
        }
        if partialResult + 3 <= number {
            recursion(numbers + [3], partialResult + 3)
        }
    }

    recursion([], 0)
    print(result.count)
}

let numberOfCase = Int(readLine()!)!
for _ in 1...numberOfCase {
    solution()
}
