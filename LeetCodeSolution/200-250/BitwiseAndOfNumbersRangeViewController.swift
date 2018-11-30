//
//  BitwiseAndOfNumbersRangeViewController.swift
//  LeetCodeSolution
//
//  Created by 李爱红 on 2018/11/28.
//  Copyright © 2018年 LAH. All rights reserved.
//

import UIKit

class BitwiseAndOfNumbersRangeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(rangeBitwiseAnd(2, 1000))

    }
    
    /*
     0  - 0000
     1  - 0001
     2  - 0010
     3  - 0011
     4  - 0100
     5  - 0101
     6  - 0110
     7  - 0111
     8  - 1000
     9  - 1001
     10 - 1010
     
     8..10  =>  1000
     6..7   =>  0110
     4..6   =>  0100
     */
    
    // 1001 & 11001 肯定是0 因为11001肯定包含 10110情况
    
    func rangeBitwiseAnd(_ m: Int, _ n: Int) -> Int {
        
        var m = m
        var n = n
        var i = 0
        while m != n {
            m >>= 1
            n >>= 1
            i += 1
        }
        return m << i

    }
    
}
