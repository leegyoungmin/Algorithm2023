let N = Int(readLine()!)!
let inputs = readLine()!.split(separator: " ").map { Int($0)! }
var values = Array(repeating: 0, count: N)

func solve() {
 values[0] = inputs.first! // 초기값
 print(values[0])
 for i in 1..<N {
   print(values[i - 1], inputs[i], "=", values[i - 1] + inputs[i])
   values[i] = max(inputs[i], values[i - 1] + inputs[i])
 }

 print(values)
}

solve()
