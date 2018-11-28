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

    let tb : UITableView = UITableView(frame: CGRect.zero)
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let array = [1,2,3,4,5,6,7,8,9,0]
        print(array[3...4])
        
        var str : String = "Hello World"
        print(str.remove(at: str.startIndex))
//        str.removeSubrange(str.startIndex...str.index(str.startIndex, offsetBy: 4))
        print(str)
        
        tb.delegate = self;
        tb.dataSource = self;
        tb.frame = self.view.frame
        tb.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        self.view.addSubview(tb)
        
//        let solution : Solution = Solution()
//        print(solution.isMatch("bbaaac", "bba*"))
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        tb.scrollToRow(at: IndexPath(row: 11, section: 0), at: UITableViewScrollPosition.middle, animated: true)
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
        case 0:
            cell.textLabel?.text = "202. Happy Number"
        case 1:
            cell.textLabel?.text = "2. Add Two Number"
        case 2:
            cell.textLabel?.text = "3. Longest Substring Without Repeating Characters"
        case 3:
            cell.textLabel?.text = "4. Median of Two Sorted Arrays"
        case 5:
            cell.textLabel?.text = "6. ZigZag Conversion"
        case 8:
            cell.textLabel?.text = "9. Palindrome Number"
        case 10:
            cell.textLabel?.text = "11. Container With Most Water"
        case 11:
            cell.textLabel?.text = "12. Integer to Roman"
        case 12:
            cell.textLabel?.text = "13. Roman to Integer"
        case 13:
            cell.textLabel?.text = "14. Longest Common Prefix"
        case 17:
            cell.textLabel?.text = "18. 4Sum"
        case 48:
            cell.textLabel?.text = "48. Rotate Image"
        case 52:
            cell.textLabel?.text = "53. Maximum Subarray"
        case 74:
            cell.textLabel?.text = "75. Sort Colors"
        case 95:
            cell.textLabel?.text = "96. Unique Binary Search Trees"
        case 96:
            cell.textLabel?.text = "75. Sort Colors"

        default:
            cell.textLabel?.text = ""
            break
        }
        return cell;
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        var vc : UIViewController
        switch indexPath.row {
        case 0:
            vc = HappyNumberViewController()
            self.navigationController?.pushViewController(vc, animated:true)
        case 1:
            vc = AddTwoNumbersViewController()
            self.navigationController?.pushViewController(vc, animated:true)
        case 2:
            vc = LongestSubstringWithoutRepeatingCharactersViewController()
            self.navigationController?.pushViewController(vc, animated:true)
        case 3:
            vc = MedianOfTwoSortedArraysViewController()
            self.navigationController?.pushViewController(vc, animated:true)
        case 5:
            vc = ZigZagConversionViewController()
            self.navigationController?.pushViewController(vc, animated:true)
        case 8:
            vc = PalindromeNumberViewController()
            self.navigationController?.pushViewController(vc, animated:true)
        case 10:
            vc = ContainerWithMostWaterViewController()
            self.navigationController?.pushViewController(vc, animated:true)
        case 11:
            vc = IntegerToRomanViewController()
            self.navigationController?.pushViewController(vc, animated:true)
        case 12:
            vc = RomanToIntegerViewController()
            self.navigationController?.pushViewController(vc, animated:true)
        case 13:
            vc = LongestCommonPrefixViewController()
            self.navigationController?.pushViewController(vc, animated:true)
        case 17:
            vc = FourSumViewController()
            self.navigationController?.pushViewController(vc, animated:true)
        case 48:
            vc = MultiplyStringsViewController()
            self.navigationController?.pushViewController(vc, animated:true)
        case 52:
            vc = MaximumSubarrayViewController()
            self.navigationController?.pushViewController(vc, animated:true)
        case 74:
            vc = SortColorsViewController()
            self.navigationController?.pushViewController(vc, animated:true)
        case 96:
            vc = InterleavingStringViewController()
            self.navigationController?.pushViewController(vc, animated:true)
        case 95:
            vc = UniqueBinarySearchTreesViewController()
            self.navigationController?.pushViewController(vc, animated:true)

        default: break
        }
    }
}

