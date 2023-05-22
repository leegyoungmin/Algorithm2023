let _ = readLine()
let numbers = readLine()!.split(separator: " ").compactMap({ Int($0) }).sorted()
let _ = readLine()
let checkList = readLine()!.split(separator: " ").compactMap({ Int($0) })

for number in checkList {
    var startIndex = 0
    var endIndex = numbers.count - 1
    var isPrinted = false

    guard number >= numbers.first!,
          number <= numbers.last! else {
        print(0)
        continue
    }

    binarySearching: while startIndex < endIndex - 1 {
        let halfIndex = (startIndex + endIndex) / 2
        switch numbers[halfIndex] {
        case ..<number:
            startIndex = halfIndex
        case number:
            print(1)
            isPrinted = true
            break binarySearching
        default:
            endIndex = halfIndex
        }
    }

    guard isPrinted == false else { continue }

    if numbers[startIndex] == number || numbers[endIndex] == number {
        print(1)
    } else {
        print(0)
    }
}
