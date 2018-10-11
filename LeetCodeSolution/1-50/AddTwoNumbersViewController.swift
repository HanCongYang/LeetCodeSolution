//
//  AddTwoNumbersViewController.swift
//  LeetCodeSolution
//
//  Created by 李爱红 on 2018/10/11.
//  Copyright © 2018年 LAH. All rights reserved.
//

import UIKit

class AddTwoNumbersViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        addTwoNumbers(listNodeFromArray([1, 8, 3]), listNodeFromArray([0]))

    }

    /*
     public ListNode addTwoNumbers(ListNode l1, ListNode l2) {
     ListNode c1 = l1;
     ListNode c2 = l2;
     ListNode sentinel = new ListNode(0);
     ListNode d = sentinel;
     int sum = 0;
     while (c1 != null || c2 != null) {
     sum /= 10;
     if (c1 != null) {
     sum += c1.val;
     c1 = c1.next;
     }
     if (c2 != null) {
     sum += c2.val;
     c2 = c2.next;
     }
     d.next = new ListNode(sum % 10);
     d = d.next;
     }
     if (sum / 10 == 1)
     d.next = new ListNode(1);
     return sentinel.next;
     }
     */
    func listNodeFromArray(_ array: [Int]) -> ListNode {
        var list : ListNode?
        var result : ListNode?

        for (index, number) in array.enumerated() {
            if index == 0 {
                list = ListNode(number)
                result = list;
            } else {
                let next = ListNode(number)
                list?.next = next
                list = next;
            }
        }
        return result!
    }
    
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        
        var extra = 0
        var list1 = l1
        var list2 = l2
        let result = ListNode(0)
        var temp = result
        
        while list1 != nil || list2 != nil || extra != 0 {
            let sum = (list1?.val ?? 0) + (list2?.val ?? 0) + extra
            extra = sum / 10
            temp.next = ListNode(sum % 10)
            temp = temp.next!
            list1 = list1?.next
            list2 = list2?.next
        }
    
        return result.next;
    }
}

