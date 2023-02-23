import Foundation

let roomNumber: String = readLine()!
let roomNumberArray: [Character] = roomNumber.compactMap {
    Character(extendedGraphemeClusterLiteral: $0)
}

let intArray: [Int] = roomNumberArray.compactMap {
    Int(String($0))
}

var stockArray: [Int] = Array(repeating: 1, count: 10)
var setCount: Int = 1

intArray.forEach { number in
    if stockArray[number] > 0 {
        stockArray[number] -= 1
    } else if number == 6 && stockArray[9] > 0 {
        stockArray[9] -= 1
    } else if number == 9 && stockArray[6] > 0 {
        stockArray[6] -= 1
    } else {
        addSet()
        stockArray[number] -= 1
    }
}

func addSet() {
    setCount += 1
    for i in 1...10 {
        stockArray[i-1] += 1
    }
}

print(setCount)
