class Solution {
    func maxDepth(_ s: String) -> Int {
        var stack = [Character]()
        var depth: Int = 0
        
        for char in s {
            if char == "(" {
                stack.append(char)
                
                depth = max(stack.count, depth)
            } else if char == ")" {
                stack.removeLast()
            }
        }
        
        return depth
    }
}
