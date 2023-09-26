let conditions = readLine()!.split(separator: " ").map { Int(String($0))! }
let N = conditions[0], k = conditions[1]
var students: [[Int]] = Array(repeating: Array(repeating: 0, count: 2), count: 6)
var result: Int = 0

for _ in 0..<N {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    
    students[input[1] - 1][input[0]] += 1
}

for idx in 0..<students.count {
    let student = students[idx]
    let female = student[0], male = student[1]
    
    var femaleCount = female / k
    var maleCount = male / k
    
    if female % k != 0 {
        femaleCount += 1
    }
    
    if male % k != 0 {
        maleCount += 1
    }
    
    result += femaleCount
    result += maleCount
}

print(result)
