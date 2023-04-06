let n = readLine()!.split(separator: " ").map { Int($0)! }
let (a, b) = (n[0], n[1])
var text: String = ""
for _ in 1...a {
    text += "*"
}
for _ in 1...b {
    print(text)
}
