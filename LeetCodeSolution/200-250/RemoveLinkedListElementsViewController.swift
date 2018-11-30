//
//  RemoveLinkedListElementsViewController.swift
//  LeetCodeSolution
//
//  Created by 李爱红 on 2018/11/30.
//  Copyright © 2018年 LAH. All rights reserved.
//

import UIKit

class RemoveLinkedListElementsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        removeElements(listNodeFromArray([1,2,6,3,4,5,6]), 6)

    }
    
    func removeElements(_ head: ListNode?, _ val: Int) -> ListNode? {
        
        guard head != nil else {
            return nil
        }
        
        var current : ListNode? = head
        let result : ListNode! = ListNode(0)
        var temp : ListNode! = result
        
        while current != nil {
            
            if current!.val != val{
                temp!.next = current
                temp = current
            }
            current = current?.next
        }
        
        temp.next = nil
        return result.next
    }

}
