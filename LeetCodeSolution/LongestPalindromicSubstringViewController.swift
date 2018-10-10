
//
//  LongestPalindromicSubstringViewController.swift
//  LeetCodeSolution
//
//  Created by 李爱红 on 2018/9/29.
//  Copyright © 2018年 LAH. All rights reserved.
//
/*
 最长连续回文串
 
 Given a string s, find the longest palindromic substring in s. You may assume that the maximum length of s is 1000.
 
 Example 1:
 
 Input: "babad"
 Output: "bab"
 Note: "aba" is also a valid answer.
 Example 2:
 
 Input: "cbbd"
 Output: "bb"
 
 */

import UIKit

class LongestPalindromicSubstringViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
//        print(longestPalindrome("aaaa"))
//        print(longestPalindrome("bb"))
        print(longestPalindrome("335123212"))
//        print(longestPalindrome("3210123210012321001232100123210012321001232100123210012321001232100123210012321001232100123210012321001232100123210012321001232100123210012321001232100123210012321001232100123210012321001232100123210012321001232100123210012321001232100123210012321001232100123210012321001232100123210012321001232100123210012321001232100123210012321001232100123210012321001232100123210012321001232100123210012321001232100123210012321001232100123210012321001232100123210012321001232100123210012321001232100123210012321001232100123210012321001232100123210012321001232100123210012321001232100123210012321001232100123210012321001232100123210012321001232100123210012321001232100123210012321001232100123210012321001232100123210012321001232100123210012321001232100123210012321001232100123210012321001232100123210012321001232100123210012321001232100123210012321001232100123210012321001232100123210012321001232100123210012321001232100123210012321001232100123210012321001232100123210012321001232101232100123210012321001232101"))

    }

    func longestPalindrome(_ s: String) -> String {
        
        guard !s.isEmpty else { return "" }
        
        let count = s.count * 2 + 1
        var t: [Character] = ["#"]
        t.reserveCapacity(count)
        for c in s {
            t.append(c)
            t.append("#")
        }
        var p = Array(repeating: 0, count: count)
        var center = 0
        var rightEnd = 0
        for i in 1..<count - 1 {
            let mirror = 2 * center - i
            // rightEnd为向右极限边界
            // 最少便利到中点就OK
            p[i] = rightEnd > i ? min(rightEnd - i, p[mirror]) : 0
            
//            print("rightEnd = \(rightEnd)")
//            print("mirror = \(mirror)")
//            print("a[i] = \(p[i])")
            // Attempt to expand palindrome centered at i
            var left = i - 1 - p[i]
            var right = i + 1 + p[i]
            while left >= 0 && right < count && t[left] == t[right] {
                p[i] += 1
                left -= 1
                right += 1
            }
            
            // If palindrome centered at i expand past right end,
            // adjust center based on expanded palindrome.
            if i + p[i] > rightEnd {
                center = i
                rightEnd = i + p[i]
            }
        }
        
        var maxLen = 0
        var maxCenter = 0
        for i in 1..<count - 1 {
            if p[i] > maxLen {
                maxLen = p[i]
                maxCenter = i
            }
        }
        print(maxCenter)
        let start = s.index(s.startIndex, offsetBy: (maxCenter + 1 - maxLen) / 2)
        let end = s.index(start, offsetBy: maxLen)
        return String(s[start..<end])
        
//        guard !s.isEmpty else {
//            return ""
//        }
//        guard !(s.count == 1) else {
//            return s
//        }
//
//        let strings = Array(s)
//        var chars : [Character] = []
//        for str in strings {
//            chars.append("#")
//            chars.append(str)
//        }
//        chars.append("#")
//
//        var steps : [Int] = []
//
//        for i in 0..<chars.count {
//            steps.append(1)
//            if i > 0 {
//                var left = i - 1
//                var right = i + 1
//                while left >= 0 && right < chars.count && chars[left] == chars[right] {
//                    steps[i] = steps[i] + 1
//                    left = left - 1
//                    right = right + 1
//                }
//            }
//
//        }
//
//        var start =  steps.index {$0 == steps.max()!} ?? 0
//        let offset = steps.max()! - 1
//        start = (start - offset) / 2
//
//        let startIndex = s.index(s.startIndex, offsetBy: start)
//        let endIndex = s.index(s.startIndex, offsetBy: start + offset)
//
//        return String(s[startIndex..<endIndex])
    }
}
