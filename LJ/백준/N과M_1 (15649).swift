// N과 M (1)
//https://www.acmicpc.net/problem/15649

let NM = readLine()!.split(separator: " ").map { Int(String($0))! }
let N = NM[0], M = NM[1]
var array = [Int]()

recursion(M)

func recursion(_ m: Int) {
    if m == 0 { return }
    for i in 1...N {
        var depth = m
        if array.contains(i) { continue }
        array.append(i)
        if array.count == M {
            print(array.map{ String($0) }.joined(separator: " "))
        } else if depth > 0 {
            depth -= 1
            recursion(depth)
        }
        array.removeLast()
    }
}
