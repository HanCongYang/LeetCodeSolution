//
//  CountPrimesViewController.swift
//  LeetCodeSolution
//
//  Created by 李爱红 on 2018/11/30.
//  Copyright © 2018年 LAH. All rights reserved.
//

import UIKit

class CountPrimesViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        print(countPrimes(10))
    }
    
    // https://blog.csdn.net/x_i_y_u_e/article/details/46365549
    
    func countPrimes(_ n: Int) -> Int {
        
        guard n > 1 else {
            return 0
        }
        
        var result : [Bool] = Array(repeating: true, count: n);
        result[0] = false
        result[1] = false
        
        var num = 0
        for i in 2..<result.count {
            
            if result[i] == false { continue }
            if result[i] == true {
                
                num = num + 1
                var start = 2
                while start * i < result.count {
                    result[start * i] = false
                    start = start + 1
                }
            }
        }
        
        return num
    }

}
