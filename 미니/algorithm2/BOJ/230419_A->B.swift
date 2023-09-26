let AB = readLine()!.split(separator: " ").map { Int(String($0))! }
let a = AB[0], b = AB[1]

func recursion(number: Int, count: Int) -> Int {
    if number == b {
        return count
    }
    if number > b { return -1 }
    
    let left = recursion(number: number * 2, count: count + 1)
    let right = recursion(number: number * 10 + 1, count: count + 1)
    
    return max(left, right)
}

print(recursion(number: a, count: 1))
