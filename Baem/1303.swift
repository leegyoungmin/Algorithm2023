let inputArea = readLine()!.split(separator: " ").map { Int($0)! }

let xAxis = inputArea[0]
let yAxis = inputArea[1]

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
var xPerson = [Int]()
var yPerson = [Int]()



for j in 0...yAxis-1 {
    for i in 0...xAxis-1 {
        if hitmap[j][i] == false {

            if map[j][i] == "W" {
                queue.append((i,j))
                hitmap[j][i] = true

                var count = 1

                while !queue.isEmpty {
                    let removeQueue = queue.removeFirst()

                    let x = removeQueue.0
                    let y = removeQueue.1

                    if y - 1 >= 0 {
                        if map[y-1][x] == "W", hitmap[y-1][x] == false {
                            queue.append((x,y-1))
                            hitmap[y-1][x] = true
                            count += 1
                        }
                    }

                    if x - 1 >= 0 {
                        if map[y][x-1] == "W", hitmap[y][x-1] == false {
                            queue.append((x-1,y))
                            hitmap[y][x-1] = true
                            count += 1
                        }
                    }

                    if x + 1 <= xAxis - 1, hitmap[y][x+1] == false {
                        if map[y][x+1] == "W" {
                            queue.append((x+1,y))
                            hitmap[y][x+1] = true
                            count += 1
                        }
                    }

                    if y + 1 <= yAxis - 1, hitmap[y+1][x] == false {
                        if map[y+1][x] == "W" {
                            queue.append((x,y+1))
                            hitmap[y+1][x] = true
                            count += 1
                        }
                    }

                }
                xPerson.append(count)
            } else if map[j][i] == "B" {
                queue.append((i,j))
                hitmap[j][i] = true

                var count = 1

                while !queue.isEmpty {
                    let removeQueue = queue.removeFirst()

                    let x = removeQueue.0
                    let y = removeQueue.1

                    if y - 1 >= 0 {
                        if map[y-1][x] == "B", hitmap[y-1][x] == false {
                            queue.append((x,y-1))
                            hitmap[y-1][x] = true
                            count += 1
                        }
                    }

                    if x - 1 >= 0 {
                        if map[y][x-1] == "B", hitmap[y][x-1] == false {
                            queue.append((x-1,y))
                            hitmap[y][x-1] = true
                            count += 1
                        }
                    }

                    if x + 1 <= xAxis - 1, hitmap[y][x+1] == false {
                        if map[y][x+1] == "B" {
                            queue.append((x+1,y))
                            hitmap[y][x+1] = true
                            count += 1
                        }
                    }

                    if y + 1 <= yAxis - 1, hitmap[y+1][x] == false {
                        if map[y+1][x] == "B" {
                            queue.append((x,y+1))
                            hitmap[y+1][x] = true
                            count += 1
                        }
                    }
                }
                yPerson.append(count)
            }
        }
    }
}

var xValue = 0
var yValue = 0

for i in xPerson {
    xValue += i*i
}

for i in yPerson {
    yValue += i*i
}

print(xValue)
print(yValue)
