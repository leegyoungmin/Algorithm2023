//괄호의 최대 중첩 깊이(1614)
//https://leetcode.com/problems/maximum-nesting-depth-of-the-parentheses/

class Solution {
    func maxDepth(_ s: String) -> Int {
        var inputs = s.map { String($0) }
        inputs = inputs.reversed()
        var count: Int = 0
        var counts = [Int]()
        for _ in 0..<inputs.count {
            if inputs.last == "(" {
                count += 1
                inputs.popLast()
            } else if inputs.last == ")" {
                count -= 1
                inputs.popLast()
            } else {
                inputs.popLast()
            }
            counts.append(count)
        }
        let result: Int = counts.max()!
        return result
    }
}

let s = Solution()
//let result = s.maxDepth("(1+(2*3)+((8)/4))+1")
let result = s.maxDepth("(1)+((2))+(((3)))")
print(result)
