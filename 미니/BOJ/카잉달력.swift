let C = Int(readLine()!)!

func gcd(_ a: Int, _ b: Int) -> Int {
 if a == 0 { return b }
 return gcd(b % a, a)
}

func lcm(_ a: Int, b: Int) -> Int { // 최소공배수?
 return a / gcd(a, b) * b
}

func solve(_ m: Int, _ n: Int, _ x: Int, _ y: Int) -> Int {
 var x = x, y = y

 if x == m { x = 0 }
 if y == n { y = 0 }

 let lcmValue = lcm(m, b: n)

 for i in stride(from: x, through: lcmValue, by: m) {
   if i == 0 { continue }
   if (i % m == x) && (i % n == y) {
     return i
   }
 }

 return -1
}

for _ in 0..<C {
 let values = readLine()!.split(separator: " ").map { Int($0)! }
 let M = values[0], N = values[1], x = values[2], y = values[3]
 print(solve(M, N, x, y))
}
