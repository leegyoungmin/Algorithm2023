import Foundation

let roomNumber = Int(readLine()!)!.description.map { Int(String($0))! }
var result = Array(repeating: 0.0, count: 9)

for num in roomNumber {
    if num == 9 || num == 6 {
        result[6] += 0.5
    } else {
        result[num] += 1
    }
}

print(Int(result.max()!.rounded()))
