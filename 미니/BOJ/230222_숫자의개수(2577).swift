// Memory: 69104
// time : 8

var multi: Int = 1
var result: [UInt] = Array(repeating: 0, count: 10)

for _ in 0..<3 {
    let input = Int(readLine()!)!
    multi *= input
}

for num in multi.description.map ({ Int(String($0))! }) {
    result[num] += 1
}

print(result.map(\.description).joined(separator: " "))
