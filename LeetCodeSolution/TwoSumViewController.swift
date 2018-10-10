//
//  1TwoSumViewController.swift
//  LeetCodeSolution
//
//  Created by 李爱红 on 2018/9/29.
//  Copyright © 2018年 LAH. All rights reserved.
//

import UIKit

/*
 Given an array of integers, return indices of the two numbers such that they add up to a specific target.
 
 You may assume that each input would have exactly one solution, and you may not use the same element twice.
 
 Example:
 
 Given nums = [2, 7, 11, 15], target = 9,
 
 Because nums[0] + nums[1] = 2 + 7 = 9,
 return [0, 1].
 */

class TwoSumViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print(twoSum([1, 2, 3, 4, 5], 5))
        

    }
    
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        
        var map = [Int : Int]()
        for a in 0..<nums.count {// 用target减去值剩下的做key
            let compliment = target - nums[a]
            print(compliment)
            if let key = map[compliment] {
                return [key, a]
            }
            map[nums[a]] = a
        }
        return [0,0]
        
        // lowB的解决方案
        /*
        for i in 0..<nums.count {
            for j in i+1..<nums.count {
                if nums[i] + nums[j] == target {
                    return [i, j]
                }
            }
        }
        
        return[]
         */
    }
}
