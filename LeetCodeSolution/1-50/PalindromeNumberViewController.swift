//
//  PalindromeNumberViewController.swift
//  LeetCodeSolution
//
//  Created by 李爱红 on 2018/10/16.
//  Copyright © 2018年 LAH. All rights reserved.
//

import UIKit

class PalindromeNumberViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        isPalindrome(121)
        
    }

    func isPalindrome(_ x: Int) -> Bool {
        
        if x < 0 {
            return false
        }
        if x >= 0 && x < 10 {
            return true
        }
        
        var n = x
        var s = 0
        while n > 0 {
            s = s * 10
            s = s + n % 10
            n = n / 10
        }
        if s == x {
            return true
        }
        return false
        
    }

}
