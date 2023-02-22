var result = 1

for _ in 1...3 {
    result = result * Int(readLine()!)!
}

var a = Array(repeating: 0, count: 10)
let b = Array(String(result))

for i in b {
    let c = Int(String(i))!
    a[c] += 1
}

for i in a {
    print(i)
}
