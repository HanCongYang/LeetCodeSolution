//
//  ThreeSumClosestViewController.swift
//  LeetCodeSolution
//
//  Created by 李爱红 on 2018/12/6.
//  Copyright © 2018年 LAH. All rights reserved.
//

import UIKit

class ThreeSumClosestViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.white
        print(threeSumClosest([-1, 2, 1, -4], 1))
        print(threeSumClosest([0,2,1,-3], 1))
    }
    
    func threeSumClosest(_ nums: [Int], _ target: Int) -> Int {
        
        guard nums.count > 2 else {
            fatalError("Input array must have at least 3 elements.")
        }
        
        let sortedArray = nums.sorted()
        var result = sortedArray[0] + sortedArray[1] + sortedArray[2]
        for (i, value) in sortedArray[0..<sortedArray.count - 2].enumerated() {
            
            var j = i + 1
            var k = nums.count - 1
            while j < k {
                
                let temp = sortedArray[i] + sortedArray[j] + sortedArray[k]
                if (abs(target - temp) < abs(target - result)) {
                    result = value + sortedArray[j] + sortedArray[k]
                    if target == result { return result }
                }
                if (target < temp) { k = k - 1 }
                else { j = j + 1 }
            }
            
        }
        return result
    }
}
