let a = readLine()!.split(separator: " ")
let b = Int(a[0])!
let c = Int(a[1])!
var d = Array(repeating: 0, count: 6)
var e = Array(repeating: 0, count: 6)
var result = 0

for _ in 1...b {
    let f = readLine()!.split(separator: " ")
    let g = Int(f[0])!
    let h = Int(f[1])! - 1
    
    if g == 0 {
        d[h] += 1
    } else {
        e[h] += 1
    }
}

for i in d {
    if i == 0 {
        continue
    }
    
    if i % c == 0 {
        result += i / c
    } else {
        result += i / c + 1
    }
}

for i in e {
    if i == 0 {
        continue
    }
    
    if i % c == 0 {
        result += i / c
    } else {
        result += i / c + 1
    }
}

print(result)
