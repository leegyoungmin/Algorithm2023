func solution(_ board: [[Int]]) -> Int {
   let xAxis = [-1, -1, -1, 0, 0, 1, 1, 1]
   let yAxis = [1, 0, -1, 1, -1, 1, 0, -1]
   
   let boards = board
   var visit = Array(repeating: Array(repeating: false, count: board.count), count: board.count)
   
   for row in 0..<boards.count {
       for col in 0..<boards.count {
           let current = boards[row][col]
           
           if current == .zero { continue }
           
           visit[row][col] = true
           
           for idx in 0..<xAxis.count {
               let dx = xAxis[idx], dy = yAxis[idx]
               
               let (x, y) = ((row + dx), (col + dy))
               if x < 0 || x >= boards.count || y < 0 || y >= boards.count { continue }
               
               
               visit[x][y] = true
           }
       }
   }
   
   return visit.flatMap { $0 }.filter { $0 == false }.count
}

let boards = [[0, 0, 0, 0, 0], [0, 0, 0, 0, 0], [0, 0, 0, 0, 0], [0, 0, 1, 0, 0], [0, 0, 0, 0, 0]]
print(solution(boards))
