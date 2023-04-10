
let inputArea = readLine()!.split(separator: " ").map { Int($0)! }

let xAxis = inputArea[1]
let yAxis = inputArea[0]

var hitmap = Array(repeating: Array(repeating: false, count: xAxis), count: yAxis)

var map = [[Character]]()
for _ in 1...yAxis {
    var xArray = [Character]()
    for char in readLine()! {
        xArray.append(char)
    }

    map.append(xArray)
}

var queue = [(Int,Int)]()

for i in 0...xAxis-1 {

    queue.append((i,0))

    hitmap[0][i] = true

    while !queue.isEmpty {
        let removeQueue = queue.removeFirst()

        let x = removeQueue.0
        let y = removeQueue.1

        if x - 1 >= 0 {
            if map[y][x-1] == "0", hitmap[y][x-1] == false {
                hitmap[y][x-1] = true
                queue.append((x-1, y))
            }
        }

        if x + 1 <= xAxis - 1 {
            if map[y][x+1] == "0", hitmap[y][x+1] == false {
                hitmap[y][x+1] = true
                queue.append((x+1, y))
            }
        }

        if y + 1 <= yAxis - 1 {
            if map[y+1][x] == "0", hitmap[y+1][x] == false {
                hitmap[y+1][x] = true
                queue.append((x, y+1))
            }
        }
    }
}

var result = "NO"

for i in 0...xAxis - 1 {
    if hitmap[yAxis-1][i] == true {
        result = "YES"
        break
    }
}

print(result)
