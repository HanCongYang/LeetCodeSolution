//
//  ListNodeExtension.swift
//  LeetCodeSolution
//
//  Created by 李爱红 on 2018/11/30.
//  Copyright © 2018年 LAH. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    
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
}
