import Foundation

func solution(_ brown:Int, _ yellow:Int) -> [Int] {
    let size: Int = brown + yellow
    var stack: [[Int]] = []
    for divisor in 3... {
        if Double(divisor) > sqrt(Double(size)) {
            break
        }
        if size % divisor == 0 {
            stack.append([divisor, size / divisor])
        }
    }
    var result: [Int] = []
    for sides in stack {
        let brownArea: Int = (sides[0] + sides[1] - 2) * 2
        let yellowArea: Int = size - brownArea
        if brownArea == brown,
           yellowArea == yellow {
            result = sides[0] >= sides[1] ? [sides[0], sides[1]] : [sides[1], sides[0]]
            break
        }
    }
    return result
}
