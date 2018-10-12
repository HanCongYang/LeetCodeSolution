//
//  LongestSubstringWithoutRepeatingCharactersViewController.swift
//  LeetCodeSolution
//
//  Created by 李爱红 on 2018/10/12.
//  Copyright © 2018年 LAH. All rights reserved.
//
/*
 
 https://leetcode.com/problems/longest-substring-without-repeating-characters/description/
 
 Given a string, find the length of the longest substring without repeating characters.
 
 Example 1:
 
 Input: "abcabcbb"
 Output: 3
 Explanation: The answer is "abc", with the length of 3.
 Example 2:
 
 Input: "bbbbb"
 Output: 1
 Explanation: The answer is "b", with the length of 1.
 Example 3:
 
 Input: "pwwkew"
 Output: 3
 Explanation: The answer is "wke", with the length of 3.
 Note that the answer must be a substring, "pwke" is a subsequence and not a substring.
 */

import UIKit

class LongestSubstringWithoutRepeatingCharactersViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        print(lengthOfLongestSubstring("abcabcbb"))
//        print(lengthOfLongestSubstring("aaaaaaa"))
//        print(lengthOfLongestSubstring("pwwkew"))
//        print(lengthOfLongestSubstring("aab"))
        print(lengthOfLongestSubstring("dvdf"))

    }

    func lengthOfLongestSubstring(_ s: String) -> Int {
        if s.count == 0 || s.count == 1 {return s.count}
        var count = 0
        let array = Array(s)
        var temp = [Character]()
        for char in array {
            if temp.contains(char) {
                let index = temp.index(of: char)
                temp.removeSubrange(0...index!)
            }
            temp.append(char)
            count = max(count, temp.count)
        }
        return count
    }
}
