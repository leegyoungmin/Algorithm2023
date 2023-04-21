let N = Int(readLine()!)!

var map = [[String]]()

for _ in 1...N {
    var arr = [String]()
    for j in readLine()! {
        arr.append(String(j))
    }
    map.append(arr)
}

func recursion(xRange: (Int, Int), yRange: (Int, Int)) -> String {
    var result = ""
    
    if xRange.0 == xRange.1 {
        if map[yRange.0][xRange.0] == "0" {
            result += "0"
            return result
        } else {
            result += "1"
            return result
        }
    }
    
    let main = map[yRange.0][xRange.0]
    let length = (xRange.1 - xRange.0 + 1) / 2
    
    for j in yRange.0...yRange.1 {
        for i in xRange.0...xRange.1 {
            if main != map[j][i] {
                result += recursion(xRange: (xRange.0, xRange.0 + length - 1), yRange: (yRange.0, yRange.0 + length - 1))
                result += recursion(xRange: (xRange.0 + length, xRange.1), yRange: (yRange.0, yRange.0 + length - 1))
                result += recursion(xRange: (xRange.0, xRange.0 + length - 1), yRange: (yRange.0 + length, yRange.1))
                result += recursion(xRange: (xRange.0 + length, xRange.1), yRange: (yRange.0 + length, yRange.1))
                
                return "(" + result + ")"
            }
        }
    }
    
    return main
}

print(recursion(xRange: (0, N-1), yRange: (0, N-1)))
