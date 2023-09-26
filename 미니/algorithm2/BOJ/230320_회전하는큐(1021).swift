let NM = readLine()!.split(separator: " ").map { Int(String($0))! }
let N = NM[0]
var numbers = readLine()!.split(separator: " ").map { Int(String($0))! }
var values = Array(1...N)
var count: Int = 0

while numbers.isEmpty == false {
    let target = numbers[0]
    let index = values.firstIndex(of: target)!
    
    if target == values[0] {
        numbers.removeFirst()
        values.removeFirst()
    } else if index > values.count / 2 {
        let v = values.removeLast()
        values.insert(v, at: 0)
        count += 1
    } else {
        let v = values.removeFirst()
        values.append(v)
        count += 1
    }
}

print(count)
