//
//  BinarySearchViewController.swift
//  LeetCodeSolution
//
//  Created by 李爱红 on 2018/12/4.
//  Copyright © 2018年 LAH. All rights reserved.
//

import UIKit

class BinarySearchViewController: UIViewController {

    // 二分法检索
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.binarySearch(_a: [1,2,3], key: 1);
        self.binarySearch(_a: [1.1, 2.2, 3.3], key: 1.1);

        
    }
    
    func binarySearch<T: Comparable>(_a : [T], key: T) -> Int? {
        
//        var lowerBound = 0
//        var upperBound = a.count
//        while lowerBound < upperBound {
//            let midIndex = low
//        }
        
        return 0
    }
    

}
