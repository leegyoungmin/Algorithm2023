let N = Int(readLine()!)
let inputs = readLine()!.split(separator: " ").map { Int(String($0))! }
let v = Int(readLine()!)
var result: Int = 0

for num in inputs {
    if v == num {
        result += 1
    }
}

print(result)
