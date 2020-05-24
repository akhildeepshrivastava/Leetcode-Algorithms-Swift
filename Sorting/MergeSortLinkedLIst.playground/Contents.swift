import UIKit

var str = "Hello, playground"

/*
 https://leetcode.com/problems/sort-list/submissions/
 
 Sort a linked list in O(n log n) time using constant space complexity.

 Example 1:

 Input: 4->2->1->3
 Output: 1->2->3->4
 Example 2:

 Input: -1->5->3->4->0
 Output: -1->0->3->4->5
 
 */
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
     self.val = val
     self.next = nil
}




func sortList(_ head: ListNode?) -> ListNode? {
    
    if head == nil || head?.next == nil {
        return head
    }
    
    var fast :ListNode? = head
    var slow :ListNode? = head
    var pre :ListNode? = nil
    
    
    while fast != nil && fast?.next != nil {
        pre = slow
        slow = slow?.next
        fast = fast?.next?.next
    }
    
    pre?.next = nil
    
    return merge(l1: sortList(head), l2: sortList(slow))
    
}
    
    func merge(l1: ListNode?, l2: ListNode?) -> ListNode? {
        
        let head = ListNode(0)
        var firstList: ListNode? = l1
        var secondList: ListNode? = l2
        
        
        var currentNode = head
        
        while let val1 = firstList?.val, let val2 = secondList?.val {
            if val1 < val2 {
                currentNode.next = firstList
                firstList = firstList?.next
            } else {
                currentNode.next = secondList
                secondList = secondList?.next
            }
            currentNode = currentNode.next!
        }
        
        if firstList != nil {
            currentNode.next = firstList
        } else {
            currentNode.next = secondList
        }
        
        
        return head.next
    }
    
}
