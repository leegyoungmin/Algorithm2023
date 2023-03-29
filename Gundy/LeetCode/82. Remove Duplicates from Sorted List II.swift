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
    func deleteDuplicates(_ head: ListNode?) -> ListNode? {
        var nodes: [ListNode] = []
        var sortedNodes: [ListNode] = []
        guard let first = head else {
            return head
        }
        nodes.append(first)
        while let next = nodes.last?.next {
            nodes.append(next)
        }
        while nodes.isEmpty != true {
            let element = nodes.removeFirst()
            guard element.val != nodes.first?.val else {
                while element.val == nodes.first?.val {
                    nodes.removeFirst()
                }
                continue
            }
            sortedNodes.append(element)
        }
        for index in 0..<sortedNodes.count {
            guard sortedNodes[index].val != sortedNodes.last?.val else {
                sortedNodes[index].next = nil
                break
            }
            sortedNodes[index].next = sortedNodes[index + 1]
        }
        return sortedNodes.first
    }
}
