let n = Int(readLine()!)!

var map = Array(repeating: [Int](), count: n)

for idx in 0..<n {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    map[idx] = input
}

func check(x: Int, y: Int, n: Int) -> Bool {
    let base = map[x][y]

    for row in x..<(x+n) {
        for col in y..<(y+n) {
            if base != map[row][col] {
                return false
            }
        }
    }

    return true
}

var result: [Int] = Array(repeating: 0, count: 3)

func recursion(n: Int, x: Int, y: Int) {
    if check(x: x, y: y, n: n) {
        let index = map[x][y]
        result[index + 1] += 1
        return
    }

    let divider = (n / 3)
    recursion(n: divider, x: x, y: y)
    recursion(n: divider, x: x, y: y + divider)
    recursion(n: divider, x: x, y: y + divider + divider)

    recursion(n: divider, x: x + divider, y: y) // (3, 0)
    recursion(n: divider, x: x + divider, y: y + divider) // (3, 3)
    recursion(n: divider, x: x + divider, y: y + divider + divider) // (3, 6)

    recursion(n: divider, x: x + divider + divider, y: y) // (6,0)
    recursion(n: divider, x: x + divider + divider, y: y + divider) // (6, 3)
    recursion(n: divider, x: x + divider + divider, y: y + divider + divider) // (6, 6)
}

recursion(n: n, x: 0, y: 0)
result.forEach { print($0) }
