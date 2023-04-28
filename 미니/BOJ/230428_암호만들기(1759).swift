let LC = readLine()!.split(separator: " ").map { Int($0)! }
let L = LC[0], C = LC[1]

let values = readLine()!.split(separator: " ").map { String($0) }.sorted(by: <)
let vDict = ["a", "e", "i", "o", "u"]

var result: [String] = []

func recursion(start: Int, depth: Int, password: inout [String]) {
  if depth == L {
    let vCount = password.filter { vDict.contains($0) }.count
    let cCount = password.filter { vDict.contains($0) == false }.count
    
    if vCount >= 1 && cCount >= 2 { result.append(password.joined()) }
    
    return
  }
  
  for idx in start..<values.count {
    let char = values[idx]
    if password.contains(char) { continue }
    password.append(char)
    recursion(start: idx, depth: depth + 1, password: &password)
    password.removeLast()
  }
}

var partial = [String]()
recursion(start: 0, depth: 0, password: &partial)

result.forEach { print($0) }

