let input = readLine()!.split(separator: " ").compactMap({ Int($0) })
let numbers = readLine()!.split(separator: " ").compactMap({ Int($0) })
var result = Set<[Int]>()

func recursion(current index: Int, partialResult: Int, list: [Int]) {
    if list.isEmpty == false,
       partialResult == input[1] {
        result.insert(list)
    }
    guard index < input[0] - 1 else { return }
    recursion(current: index + 1, partialResult: partialResult, list: list)
    recursion(current: index + 1, partialResult: partialResult + numbers[index + 1], list: list + [index + 1])
}

recursion(current: 0, partialResult: numbers[0], list: [0])
recursion(current: 0, partialResult: 0, list: [])

print(result.count)
