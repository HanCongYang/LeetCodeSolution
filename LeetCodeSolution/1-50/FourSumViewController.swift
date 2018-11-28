
//
//  FourSumViewController.swift
//  LeetCodeSolution
//
//  Created by 李爱红 on 2018/11/14.
//  Copyright © 2018年 LAH. All rights reserved.
//

import UIKit

class FourSumViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.white;
        print(fourSum([-3,-2,-1,0,0,1,2,3], 0))
    }
    
    func fourSum(_ nums: [Int], _ target: Int) -> [[Int]] {
        
        var nums = nums.sorted()
        if nums.count < 4 {
            return []
        }
        var result : [[Int]] =  [[Int]]()
        for i in 0..<nums.count - 3 {
//            if nums[i] == nums[i-1] {continue}
            for j in i+1..<nums.count - 2 {
                for k in j+1..<nums.count - 1 {
                    for g in k+1..<nums.count {
                        if target == nums[g] + nums[i] + nums[j] + nums[k] {
                            
                            var add : Bool = true
                            for arr in result {
                                if arr[0] == nums[i]
                                && arr[1] == nums[j]
                                && arr[2] == nums[k]
                                && arr[3] == nums[g] {
                                    add = false
                                }
                                
                            }
                            
                            if add {
                                result.append([nums[i], nums[j], nums[k], nums[g]])
                            }
                        }
                    }
                }
            }
        }
        return result;
    }

    
    
}
