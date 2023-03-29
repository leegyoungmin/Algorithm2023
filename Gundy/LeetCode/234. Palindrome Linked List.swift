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
    func isPalindrome(_ head: ListNode?) -> Bool {
        var valueStack: [Int] = []
        var currentNode = head
        while currentNode != nil {
            if let value = currentNode?.val {
                valueStack.append(value)
            }
            currentNode = currentNode?.next
        }
        if valueStack == valueStack.reversed() {
            return true
        } else {
            return false
        }
    }
}
