//
//  MergeKSortedListsViewController.swift
//  LeetCodeSolution
//
//  Created by 李爱红 on 2018/9/28.
//  Copyright © 2018年 LAH. All rights reserved.
//

import UIKit

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

/*
 Merge k sorted linked lists and return it as one sorted list. Analyze and describe its complexity.
 
 Example:
 
 Input:
 [
 1->4->5,
 1->3->4,
 2->6
 ]
 Output: 1->1->2->3->4->4->5->6
 */

class MergeKSortedListsViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad();
        
        let node = ListNode.init(1)
        node.next = ListNode.init(4)
        node.next?.next = ListNode.init(5)

        let node2 = ListNode.init(1)
        node2.next = ListNode.init(3)
        node2.next?.next = ListNode.init(4)

//        let node3 = ListNode.init(2)
//        node3.next = ListNode.init(6)

        let array : [ListNode] = [node, node2]
        mergeKLists(array)
    }
    
    func mergeKLists(_ lists: [ListNode?]) -> ListNode? {
        
        if lists.count == 0 {
            return nil
        }
        var ar = [Int]()
        
        for i in 0..<lists.count {
            var node = lists[i]
            
            while node != nil {
                ar.append(node!.val)
                node = node!.next
            }
        }
        
        if ar.count == 0 {
            return nil
        }
        
        ar = ar.sorted()
        
        var head = ListNode(ar[0])
        var node = head
        for i in 1..<ar.count {
            node.next = ListNode(ar[i])
            node = node.next!
        }
        
        return head
    }
    
//    func mergeKLists(_ lists: [ListNode?]) -> ListNode? {
//
//        guard lists.count > 0 else {
//            return nil
//        }
//
//        var left = 0
//        var right = lists.count - 1
//        var lists = lists
//
//        while right > 0 {
//            left = 0
//            while left < right {
//                lists[left] = _mergeTwoLists(lists[left], lists[right])
//                left += 1
//                right -= 1
//            }
//        }
//
//        return lists[0]
//    }
//
//    private func _mergeTwoLists(_ left: ListNode?, _ right: ListNode?) -> ListNode? {
//        let dummy = ListNode(0)
//        var node = dummy
//        var left = left
//        var right = right
//
//        while left != nil && right != nil {
//            if left!.val <= right!.val {
//                node.next = left
//                left = left!.next
//                node = node.next!
//            } else {
//                node.next = right
//                right = right!.next
//                node = node.next!
//            }
//        }
//
//        node.next = left ?? right
//        return dummy.next
//    }
}
