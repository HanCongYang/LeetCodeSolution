//
//  UniqueBinarySearchTreesViewController.swift
//  LeetCodeSolution
//
//  Created by 李爱红 on 2018/10/24.
//  Copyright © 2018年 LAH. All rights reserved.
//

import UIKit

class UniqueBinarySearchTreesViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        print(numTrees(3))
        print(numTrees(4))

    }
    
    func numTrees(_ n: Int) -> Int {
        
        guard n > 1 else {
            return 1;
        }

        var dp : Array = [Int](repeating: 0, count: n + 1)
        dp[0] = 1
        dp[1] = 1
        for i in 2...n {
            for j in 1...i{
                dp[i] = dp[i] + dp[j - 1] * dp[i - j]
            }
        }
        return dp[n]
    }

}
