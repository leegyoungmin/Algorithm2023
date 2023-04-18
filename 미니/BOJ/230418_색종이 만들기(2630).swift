let n = Int(readLine()!)!

var map = Array(repeating: [Int](), count: n)

for idx in 0..<n {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    map[idx] = input
}

func check(x: Int, y: Int, n: Int) -> Bool {
    let startPoint = map[x][y]
    
    for row in x..<x+n {
        for col in y..<y+n {
            if startPoint != map[row][col] {
                return false
            }
        }
    }
    
    return true
}

var wCount: Int = 0
var bCount: Int = 0

func recursion(n: Int, x: Int, y: Int) {
    if check(x: x, y: y, n: n) {
        if map[x][y] == 0 {
            wCount += 1
        } else {
            bCount += 1
        }
        
        return
    }
    
    let half = (n / 2)
    
    recursion(n: half, x: x, y: y)
    recursion(n: half, x: x + half, y: y)
    recursion(n: half, x: x, y: y + half)
    recursion(n: half, x: x + half, y: y + half)
}

recursion(n: n, x: 0, y: 0)
print(wCount)
print(bCount)
