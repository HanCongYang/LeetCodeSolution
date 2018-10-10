//
//  ViewController.swift
//  LeetCodeSolution
//
//  Created by 李爱红 on 2018/9/28.
//  Copyright © 2018年 LAH. All rights reserved.
//

import UIKit
/*
 https://leetcode.com/problems/regular-expression-matching/description/
 
 Given an input string (s) and a pattern (p), implement regular expression matching with support for '.' and '*'.
 
 '.' Matches any single character.
 '*' Matches zero or more of the preceding element.
 The matching should cover the entire input string (not partial).// 尼玛 整个字符串匹配 不是部分
 
 Note:
 
 s could be empty and contains only lowercase letters a-z.
 p could be empty and contains only lowercase letters a-z, and characters like . or *.
 Example 1:
 
 Input:
 s = "aa"
 p = "a"
 Output: false
 Explanation: "a" does not match the entire string "aa".
 Example 2:
 
 Input:
 s = "aa"
 p = "a*"
 Output: true
 Explanation: '*' means zero or more of the precedeng element, 'a'. Therefore, by repeating 'a' once, it becomes "aa".
 Example 3:
 
 Input:
 s = "ab"
 p = ".*"
 Output: true
 Explanation: ".*" means "zero or more (*) of any character (.)".
 Example 4:
 
 Input:
 s = "aab"
 p = "c*a*b"
 Output: true
 Explanation: c can be repeated 0 times, a can be repeated 1 time. Therefore it matches "aab".
 Example 5:
 
 Input:
 s = "mississippi"
 p = "mis*is*p*."
 Output: false
 
 */

class Solution {
    
    func isMatch(_ s: String, _ p: String) -> Bool {
        
        guard !p.isEmpty else {
            guard s.isEmpty else {
                return false
            }
            return true
        }
        
        let s = Array(s)
        let p = Array(p)
        var dp = Array(repeating: Array(repeating: false, count: p.count + 1), count: s.count + 1)
        dp[0][0] = true
        // 循环不影响[0][0]
        for i in 0...s.count {
            for j in 1...p.count {
                if p[j - 1] == "*" {
                    dp[i][j] = dp[i][j - 2] || (i > 0 && (s[i - 1] == p[j - 2] || p[j - 2] == ".") && dp[i - 1][j])
                } else {
                    dp[i][j] = i > 0 && dp[i - 1][j - 1] && (s[i - 1] == p[j - 1] || p[j - 1] == ".")
                }
            }
        }
        for array in dp {
            print(array)
        }
        return dp[s.count][p.count];
    }
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let solution : Solution = Solution()
        print(solution.isMatch("bbaaac", "bba*"))
//        solution.isMatch("mississippi", "mis*is*p*.")
        // Do any additional setup after loading the view, typically from a nib.
    }
}
