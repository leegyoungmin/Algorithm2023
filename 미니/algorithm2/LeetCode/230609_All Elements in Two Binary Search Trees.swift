/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init() { self.val = 0; self.left = nil; self.right = nil; }
 *     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
 *     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
 *         self.val = val
 *         self.left = left
 *         self.right = right
 *     }
 * }
 */
class Solution {
    func getAllElements(_ root1: TreeNode?, _ root2: TreeNode?) -> [Int] {
        let values = flattenElements(root1) + flattenElements(root2)
        return values.sorted()
    }
    
    func flattenElements(_ root: TreeNode?) -> [Int] {
        guard let root = root else { return [] }
        
        var elements: [Int] = [root.val]
        
        if let left = root.left {
            elements.append(contentsOf: flattenElements(left))
        }
        
        if let right = root.right {
            elements.append(contentsOf: flattenElements(right))
        }
        return elements
    }
}

let firstNode = TreeNode(2, TreeNode(1), TreeNode(4))
let secondNode = TreeNode(1, TreeNode(0), TreeNode(3))

let sol = Solution()
print(sol.getAllElements(firstNode, secondNode))
