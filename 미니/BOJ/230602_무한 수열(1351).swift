let NPQ = readLine()!.split(separator: " ").map { Int($0)! }
let n = NPQ[0], p = NPQ[1], q = NPQ[2]
var map: [Int: Int] = [0:1]

func find(n: Int) -> Int {
    if let number = map[n] {
        return number
    }
    
    map[n] = find(n: n / p) + find(n: n / q)
    return map[n, default: 1]
}

print(find(n: n))
