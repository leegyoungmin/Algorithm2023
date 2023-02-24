var result = 0

let requiredN: Int = Int(readLine()!)!
let requiredArray = readLine()!.split(separator: " ").map { Int($0)! }
let requiredX: Int = Int(readLine()!)!

let requiredArrayX2 = requiredArray.map { $0 * 2 }
let minusX2 = requiredArrayX2.map {$0 - requiredX}
let absolute = minusX2.map { abs($0) }
var someArray = Array(repeating: 0, count: 20)

for i in minusX2 {
    someArray[i] += 1
}

for array in someArray {
    if array == 2 {
        result += 1
    }
}

print(result)
