let _ = readLine()
let numbers = readLine()!.split(separator: " ").compactMap({ Int($0) })
let sortedNumbers = Set(numbers).sorted()
var result = numbers.compactMap({ findFirstIndex(of: $0) })

print(result.map({ "\($0)" }).joined(separator: " "))

func findFirstIndex(of number: Int) -> Int {
    var startIndex = 0
    var endIndex = sortedNumbers.count - 1
    var targetIndex = -1

    while targetIndex == -1,
          endIndex - startIndex > 1 {
        let halfIndex = (startIndex + endIndex) / 2
        switch sortedNumbers[halfIndex] {
        case ..<number:
            startIndex = halfIndex
        case number:
            targetIndex = halfIndex
        default:
            endIndex = halfIndex
        }
    }
    guard targetIndex == -1 else { return targetIndex }

    if sortedNumbers[startIndex] == number {
        targetIndex = startIndex
    } else if sortedNumbers[endIndex] == number {
        targetIndex = endIndex
    }

    return targetIndex
}
