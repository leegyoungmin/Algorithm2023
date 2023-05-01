let NM = readLine()!.split(separator: " ").map { Int($0)! }
let n = NM[0], m = NM[1]

let xAxis = [1, 0, -1, 0], yAxis = [0, 1, 0, -1]

var map = Array(repeating: [Int](), count: n)

var zeroCount = 0
var cctvList: [(x: Int, y: Int)] = []

for idx in 0..<n {
  let input = readLine()!.split(separator: " ").map { Int($0)! }
  map[idx] = input
}

for i in 0..<n {
  for j in 0..<m {
    if map[i][j] >= 1 && map[i][j] < 6 {
      cctvList.append((i, j))
    } else if map[i][j] == 0 {
      zeroCount += 1
    }
  }
}

var result = Int.max

func changeMap(map: inout [[Int]], position: (Int, Int), direction: Int) -> Int {
  var posX = position.0 + xAxis[direction]
  var posY = position.1 + yAxis[direction]
  
  var count: Int = 0
  
  while posX >= 0 && posY >= 0 && posX < n && posY < m && map[posX][posY] != 6 {
    if map[posX][posY] == 0 {
      map[posX][posY] = -1
      count += 1
    }
    
    posX += xAxis[direction]
    posY += yAxis[direction]
  }
  
  return count
}

func check(position: (x: Int, y: Int), direction: Int, map: inout [[Int]]) -> Int {
  let mapValue = map[position.x][position.y]
  var count = 0
  
  if mapValue == 1 {
    count += changeMap(map: &map, position: position, direction: direction)
  } else if mapValue == 2 {
    ([0, 2]).forEach { dir in
      count += changeMap(map: &map, position: position, direction: (direction + dir) % 4)
    }
  } else if mapValue == 3 {
    (0...1).forEach { dir in
      count += changeMap(map: &map, position: position, direction: (direction + dir) % 4)
    }
  } else if mapValue == 4 {
    (0...2).forEach { dir in
      count += changeMap(map: &map, position: position, direction: (direction + dir) % 4)
    }
  } else if mapValue == 5 {
    (0...3).forEach { dir in
      count += changeMap(map: &map, position: position, direction: (direction + dir) % 4)
    }
  }
  
  return count
}

func dfs(index: Int, map: [[Int]], prevCount: Int) {
  if index >= cctvList.count {
    result = min(result, zeroCount - prevCount)
    return
  }
  
  let position = cctvList[index]
  
  for direction in 0..<4 {
    var currentMap = map
    let count = check(position: position, direction: direction, map: &currentMap)
    dfs(index: index + 1, map: currentMap, prevCount: prevCount + count)
    currentMap = map
  }
}

dfs(index: 0, map: map, prevCount: 0)

print(result)
