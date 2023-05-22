let _ = readLine()
let numbers = readLine()!.split(separator: " ").compactMap({ Int($0) })
let _ = readLine()
let checkList = readLine()!.split(separator: " ").compactMap({ Int($0) })
var counter = [Int: Int]()
var result = [Int]()

for number in numbers {
    counter[number, default: 0] += 1
}

for number in checkList {
    result.append(counter[number, default: 0])
}

print(result.map({ "\($0)" }).joined(separator: " "))
