//
//  HouseRobberViewController.swift
//  LeetCodeSolution
//
//  Created by 李爱红 on 2018/12/5.
//  Copyright © 2018年 LAH. All rights reserved.
//

import UIKit

/*
 
 你是一个专业的小偷，计划偷窃沿街的房屋。每间房内都藏有一定的现金，影响你偷窃的唯一制约因素就是相邻的房屋装有相互连通的防盗系统，如果两间相邻的房屋在同一晚上被小偷闯入，系统会自动报警。
 
 给定一个代表每个房屋存放金额的非负整数数组，计算你在不触动警报装置的情况下，能够偷窃到的最高金额。
 
 示例 1:
 
 输入: [1,2,3,1]
 输出: 4
 解释: 偷窃 1 号房屋 (金额 = 1) ，然后偷窃 3 号房屋 (金额 = 3)。
           偷窃到的最高金额 = 1 + 3 = 4 。
 示例 2:
 
 输入: [2,7,9,3,1]
 输出: 12
 解释: 偷窃 1 号房屋 (金额 = 2), 偷窃 3 号房屋 (金额 = 9)，接着偷窃 5 号房屋 (金额 = 1)。
           偷窃到的最高金额 = 2 + 9 + 1 = 12 。
 作者：麦田里的哈士奇
 来源：CSDN
 原文：https://blog.csdn.net/qq_26410101/article/details/80569811
 版权声明：本文为博主原创文章，转载请附上博文链接！
 
 */

// 如果涉及到数组尽量不要用递归
class HouseRobberViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(rob([1,2,3,1]))
        print(rob([2,7,9,3,1]))
        print(rob([1,2,1]))
        print(rob([9,0,0,9]))
        
    }
    
    func rob(_ nums: [Int]) -> Int {
        
        var a : Int = 0
        var b : Int = 0
        
        for (index, value) in nums.enumerated() {
            
            // 用这个处理偶数位和奇数位的数值
            if (index % 2 == 0) {
                /*
                 a是相对index隔了一个位置 所以可以加value、 b是相邻位置的计算结果
                 */
                a = max(a + value, b);// a = value相隔一个位置的最大值 ，b为相邻位置的最大解
            } else {
                b = max(a, b + value);
            }
        }
        return max(a, b)
    }
        
        //        guard nums.count > 2 else {
        //
        //            switch nums.count {
        //            case 0:
        //                return 0
        //            case 1:
        //                return nums[0]
        //            case 2:
        //                return max(nums[0], nums[1])
        //            default:
        //                return 0
        //            }
        //        }
        //
        //        return max(nums[0] + rob(nums[2..<nums.count]), nums[1] + rob(nums[3..<nums.count]))
    }
