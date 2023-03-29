/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
class Solution {
    func reverseList(_ head: ListNode?) -> ListNode? {
        var stack: [ListNode] = []
        guard let startNode = head else {
            return nil
        }
        stack.append(startNode)
        while let last = stack.last,
              let next = last.next {
            stack.append(next)
        }
        let reversedStack: [ListNode] = stack.reversed()
        for index in 0..<stack.count {
            if index == stack.count - 1 {
                reversedStack[index].next = nil
            } else {
                reversedStack[index].next = reversedStack[index + 1]
            }
        }
        return reversedStack.first
    }
}
