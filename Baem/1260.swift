let input = readLine()!.split(separator: " ").map { Int($0)! }

let N = input[0]
let M = input[1]
let V = input[2]

var route = Array(repeating: [Int](), count: N + 1)

for _ in 1...M {
    let inputData = readLine()!.split(separator: " ").map { Int($0)! }
    
    route[inputData.min()!].append(inputData.max()!)
    route[inputData.max()!].append(inputData.min()!)
}

for i in 0...N - 1 {
    route[i].sort()
}

func DFS() -> String {
    var dfsRoute = route
    
    var dfsStack = [Int]()
    var dfsResult = [Int]()
    
    dfsStack.append(V)
    
    while !dfsStack.isEmpty {
        let pop = dfsStack.removeLast()
        
        if dfsResult.contains(pop) {
            continue
        }
        
        dfsResult.append(pop)
        
        while !dfsRoute[pop].isEmpty {
            dfsStack.append(dfsRoute[pop].removeLast())
        }
    }
    
    return dfsResult.map{String($0)}.joined(separator: " ")
}

func BFS() -> String {
    var bfsRoute = route
    
    var bfsQueue = [Int]()
    var bfsResult = [Int]()
    
    bfsQueue.append(V)
    
    while !bfsQueue.isEmpty {
        let first = bfsQueue.removeFirst()
        
        if bfsResult.contains(first) {
            continue
        }
        
        bfsResult.append(first)
        
        bfsRoute[first].forEach {
            bfsQueue.append($0)
        }
        
        bfsRoute[first].removeAll()
    }
    
    return bfsResult.map{String($0)}.joined(separator: " ")
}

print(DFS())
print(BFS())



/*
 [
 1: [2 3 4]
 2: [4]
 3: [4]
 4: []
 ]
 */


/*
 [
 1: [2 3]
 2: [1 5]
 3: [1 4]
 4: [3 5]
 5: [2 4]
 ]
 
 V = 3
 
 stack = []
 [
 1: []
 2: []
 3: []
 4: []
 5: []
 ]
 3 -> 1 -> 2 -> 5 -> 4
 방문 하면 양쪽에서 다 지워준다.
 */

