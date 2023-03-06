let K = Int(readLine()!)!
var result = [Int]()

for _ in 0..<K {
    let number = Int(readLine()!)!

    if number == 0 {
        if result.isEmpty == false {
            result.removeLast()
        }
    } else {
        result.append(number)
    }
}

print(result.reduce(0, +))
