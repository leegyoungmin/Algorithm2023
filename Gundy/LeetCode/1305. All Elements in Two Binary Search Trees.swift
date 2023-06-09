class Solution {
    func getAllElements(_ root1: TreeNode?, _ root2: TreeNode?) -> [Int] {
        var counter = [Int: Int]()
        var stack = [root1, root2]
        while stack.isEmpty == false {
            guard let node = stack.removeLast() else {
                continue
            }
            counter[node.val, default: 0] += 1
            stack.append(node.left)
            stack.append(node.right)
        }
        return counter.keys.sorted().flatMap { Array(repeating: $0, count: counter[$0]!) }
    }
}
