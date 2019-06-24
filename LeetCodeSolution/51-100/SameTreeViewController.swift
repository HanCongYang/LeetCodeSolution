//
//  SameTreeViewController.swift
//  LeetCodeSolution
//
//  Created by 李爱红 on 2018/12/4.
//  Copyright © 2018年 LAH. All rights reserved.
//

import UIKit

class SameTreeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
        
        if p == nil && q == nil {
            return true
        }
        
        guard let unwrappedP = p, let unwrappedQ = q, unwrappedP.val == unwrappedQ.val else {
            return false
        }
        
        return isSameTree(unwrappedP.left, unwrappedQ.left) && isSameTree(unwrappedP.right, unwrappedQ.right)
    }

}
