class Solution {
    func findTarget(_ root: TreeNode?, _ k: Int) -> Bool {
        var numbers = Set<Int>()
        var stack = [root]
        while stack.isEmpty == false {
            guard let node = stack.removeLast() else {
                continue
            }
            if numbers.contains(k - node.val) {
                return true
            } else {
                numbers.insert(node.val)
            }
            stack.append(node.left)
            stack.append(node.right)
        }
        return false
    }
}
