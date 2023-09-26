let NK = readLine()!.split(separator: " ").map { Int(String($0))! }
let N = NK[0], K = NK[1]

var values = Array(1...N)
var count = K
var result: [Int] = []

while values.isEmpty == false {
    if count <= values.count {
        result.append(values[count - 1])
        values.remove(at: count - 1)
        count = (count + K - 1)
    } else {
        count -= values.count
    }
}

print("<" + result.map { String($0) }.joined(separator: ", ") + ">")
