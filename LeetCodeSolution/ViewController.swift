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

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tb = UITableView(frame: CGRect.zero)
        tb.delegate = self;
        tb.dataSource = self;
        tb.frame = self.view.frame
        tb.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        self.view.addSubview(tb)
        
//        let solution : Solution = Solution()
//        print(solution.isMatch("bbaaac", "bba*"))
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1;
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")!
        switch indexPath.row {
        case 1:
            cell.textLabel?.text = "2. Add Two Number"
        case 2:
            cell.textLabel?.text = "3. Longest Substring Without Repeating Characters"
        case 5:
            cell.textLabel?.text = "6. ZigZag Conversion"
        case 48:
            cell.textLabel?.text = "48. Rotate Image"
        case 52:
            cell.textLabel?.text = "53. Maximum Subarray"
            
        default:
            cell.textLabel?.text = ""
            break
        }
        return cell;
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        var vc : UIViewController
        switch indexPath.row {
        case 1:
            vc = AddTwoNumbersViewController()
            self.navigationController?.pushViewController(vc, animated:true)
        case 2:
            vc = LongestSubstringWithoutRepeatingCharactersViewController()
            self.navigationController?.pushViewController(vc, animated:true)
        case 5:
            vc = ZigZagConversionViewController()
            self.navigationController?.pushViewController(vc, animated:true)
        case 48:
            vc = MultiplyStringsViewController()
            self.navigationController?.pushViewController(vc, animated:true)
        case 52:
            vc = MaximumSubarrayViewController()
            self.navigationController?.pushViewController(vc, animated:true)

        default: break
        }
    }
}

