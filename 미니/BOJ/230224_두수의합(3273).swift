let N = Int(readLine()!)!
let inputs = readLine()!.split(separator: " ").map { Int(String($0))! }
let x = Int(readLine()!)!

var dict = Array(repeating: false, count: 2000001)
var result: [(Int, Int)] = []

for number in inputs {
    let target = (x - number)
    
    if target > 0 && dict[target] {
        result.append((target, number))
    }
    
    dict[number] = true
}

print(result.count)
