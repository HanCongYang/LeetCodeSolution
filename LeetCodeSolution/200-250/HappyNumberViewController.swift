
//
//  HappyNumberViewController.swift
//  LeetCodeSolution
//
//  Created by 李爱红 on 2018/11/15.
//  Copyright © 2018年 LAH. All rights reserved.
//

import UIKit

class HappyNumberViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(self.isHappy(1))
        print(self.isHappy(7))
        print(self.isHappy(10))
        print(self.isHappy(2))
        print(self.isHappy(3))
        print(self.isHappy(9))


    }

    func isHappy(_ n: Int) -> Bool {
        guard n != 0 else { return false }
        
        var x = n, y = n
        while x > 0 {
            x = cal(x)
            if x == 1 { return true }
            y = cal(cal(y))
            if y == 1 { return true }
            if x == y { return false }
        }
        
        return false
    }
    
    private func cal(_ n: Int) -> Int {
        var res = 0
        var n = n
        
        while n > 0 {
            res += (n % 10) * (n % 10)
            n /= 10
        }
        return res
    }
//    func isHappy(_ n: Int) -> Bool {
//
//        var j = n
//        var next = 0
//        var last = 0
//        var arr : [Int] = [Int]()
//
//        if n == 1 {
//            return true
//        }
//
//        while j > 1 {
//
//            while j > 0 {
//                last = j % 10
//                next = next + last * last
//                j = j / 10
//            }
//
//            if next == n {
//                return false
//            }
//
//            if next == 1 {
//                return true
//            }
//
//            j = next
//            if arr.contains(next) {
//                return false
//            }
//            arr.append(next)
//
//            next = 0
//        }
//        return false;
//
//    }
}
