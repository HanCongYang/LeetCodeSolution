//
//  MaximumSubarrayViewController.swift
//  LeetCodeSolution
//
//  Created by 李爱红 on 2018/10/12.
//  Copyright © 2018年 LAH. All rights reserved.
//

import UIKit

/*
 https://leetcode.com/problems/maximum-subarray/description/
 
 Given an integer array nums, find the contiguous subarray (containing at least one number) which has the largest sum and return its sum.
 
 Example:
 
 Input: [-2,1,-3,4,-1,2,1,-5,4],
 Output: 6
 Explanation: [4,-1,2,1] has the largest sum = 6.
 Follow up:
 
 If you have figured out the O(n) solution, try coding another solution using the divide and conquer approach, which is more subtle.
 
 */

class MaximumSubarrayViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        print(maxSubArray([-2,1,-3,4,-1,2,1,-5,4]))
        print(maxSubArray([-2,-1]))

    }
    
    // DP
    func maxSubArray(_ nums: [Int]) -> Int {
        
        if nums.count == 1 {
            return nums[0]
        }
        
        var pre : Int = nums[0]
        var result : Int = pre
        for i in 1..<nums.count {

            pre = nums[i] + ((pre > 0) ? pre : 0)
            result = max(result, pre)
        }
        
        return result
    }
}
