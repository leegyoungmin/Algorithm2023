class Solution {
    func searchBST(_ root: TreeNode?, _ val: Int) -> TreeNode? {
        var currentNode = root
        while currentNode?.val != val {
            guard currentNode != nil else {
                return nil
            }
            if currentNode!.val > val,
               currentNode?.left != nil {
                currentNode = currentNode?.left
                continue
            }
            if currentNode!.val < val,
               currentNode?.right != nil {
                currentNode = currentNode?.right
                continue
            }
            return nil
        }
        return currentNode
    }
}
