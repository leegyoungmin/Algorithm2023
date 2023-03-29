class Solution {
    func maxDepth(_ s: String) -> Int {
        var maxDepth: Int = 0
        var stack: [Character] = []
        for character in s {
            switch character {
            case "(":
                stack.append(character)
                if stack.count > maxDepth {
                    maxDepth = stack.count
                }
            case ")":
                stack.removeLast()
            default:
                continue
            }
        }
        return maxDepth
    }
}
