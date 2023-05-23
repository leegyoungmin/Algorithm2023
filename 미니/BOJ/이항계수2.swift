let NK = readLine()!.split(separator: " ").map { Int($0)! }
let N = NK[0], K = NK[1]

var combination = Array(repeating: Array(repeating: 0, count: 1002), count: 1002)

for i in 1...1000 {
 combination[i][0] = 1; combination[i][i] = 1

 for j in 1..<i {
   combination[i][j] = (combination[i - 1][j] + combination[i - 1][j - 1]) % 10007
 }
}

print(combination[N][K])
