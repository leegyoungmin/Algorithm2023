class Solution {
    func trimBST(_ root: TreeNode?, _ low: Int, _ high: Int) -> TreeNode? {
        var root = root
        while let head = root,
              !(low...high ~= head.val) {
            if head.val < low {
                root = head.right
            } else {
                root = head.left
            }
        }
        var stack = [root]
        while stack.isEmpty == false {
            guard let node = stack.removeLast() else {
                continue
            }
            while let left = node.left,
               !(low...high ~= left.val) {
                node.left = left.right
            }
            while let right = node.right,
               !(low...high ~= right.val) {
                node.right = right.left
            }
            stack += [node.left, node.right]
        }
        return root
    }
}
