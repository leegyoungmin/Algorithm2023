class Solution {
    func rangeSumBST(_ root: TreeNode?, _ low: Int, _ high: Int) -> Int {
        var result = 0
        var stack = [root]
        while stack.isEmpty == false {
            guard let node = stack.removeLast() else {
                continue
            }
            if low...high ~= node.val {
                result += node.val
                stack.append(node.right)
                stack.append(node.left)
            } else if node.val < low {
                stack.append(node.right)
            } else {
                stack.append(node.left)
            }
        }
        return result
    }
}
