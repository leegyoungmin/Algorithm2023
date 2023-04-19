let N = Int(readLine()!)!

var twoDimensional = [Array(repeating: "", count: N + 1)]

for _ in 1...N {
    twoDimensional.append([""] + readLine()!.split(separator: " ").map({ String($0) }))
}

var minus = 0
var zero = 0
var plus = 0

func recursion(xRange: (Int, Int), yRange: (Int, Int)) {
    
    if xRange.0 == xRange.1 {
        switch twoDimensional[yRange.0][xRange.0] {
            case "-1":
                minus += 1
            case "0":
                zero += 1
            case "1":
                plus += 1
            default:
                return
        }
        return
    }
    let value = twoDimensional[yRange.0][xRange.0]
    
    for j in yRange.0...yRange.1 {
        for i in xRange.0...xRange.1 {
            
            if value != twoDimensional[j][i] {
                let length = (xRange.1 - xRange.0 + 1) / 3
                
                for k in 0...2 {
                    for l in 0...2 {
                        recursion(xRange: (xRange.0 + k * length, xRange.0 + (k+1) * length - 1),
                                  yRange: (yRange.0 + l * length, yRange.0 + (l+1) * length - 1))
                    }
                }
                return
            }
        }
    }
    
    switch twoDimensional[yRange.0][xRange.0] {
        case "-1":
            minus += 1
        case "0":
            zero += 1
        case "1":
            plus += 1
        default:
            return
    }
    return
}

recursion(xRange: (1, N), yRange: (1, N))

print(minus)
print(zero)
print(plus)
