//
//  3SumViewController.swift
//  LeetCodeSolution
//
//  Created by 李爱红 on 2018/12/6.
//  Copyright © 2018年 LAH. All rights reserved.
//

import UIKit

class ThreeSumViewController: UIViewController {
    
    /*
     Given an array nums of n integers, are there elements a, b, c in nums such that a + b + c = 0? Find all unique triplets in the array which gives the sum of zero.
     https://leetcode.com/problems/3sum/
     */
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //        print(threeSum([-1, 0, 1, 2, -1, -4]))
        print(threeSum([0, 0, 0, 0, 0, 0]))
        print(threeSum([-1,0,1,2,-1,-4]))
//        print([-1, -1, 2])
    }
    
    func threeSum(_ nums: [Int]) -> [[Int]] {
        
        guard nums.count > 2 else {
            return []
        }
        
        var result : [[Int]] = []
        var sortedArray = nums.sorted()
        
        for (i, v) in sortedArray[0..<sortedArray.count - 2].enumerated() {
            
            if i - 1 >= 0 && v == sortedArray[i - 1] { continue }
            
            for (j, vv) in sortedArray[i + 1..<sortedArray.count - 1].enumerated() {
                
                if vv != v && i + j > 0 && sortedArray[i + j] != sortedArray[i + j + 1] {continue}
                let target = 0 - v - vv
                if target < vv { continue }
                if sortedArray[i + j + 2..<sortedArray.count].contains(target) {
                    result.append([v, vv, target])
                }
            }
        }
        return result
    }
}
