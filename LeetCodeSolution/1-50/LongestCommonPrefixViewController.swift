//
//  LongestCommonPrefixViewController.swift
//  LeetCodeSolution
//
//  Created by 李爱红 on 2018/11/12.
//  Copyright © 2018年 LAH. All rights reserved.
//

import UIKit

class LongestCommonPrefixViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print(longestCommonPrefix(["flower","flow","flight"]))
    }
    

    func longestCommonPrefix(_ strs: [String]) -> String {
        
        guard strs.count > 0 else {
            return ""
        }

        let shortestWord = strs.min{$0.count < $1.count}!
        var longestPrefix = shortestWord
        
        for str in strs {
            
            while !str.hasPrefix(longestPrefix), longestPrefix.count > 0 {
                longestPrefix.removeLast()
            }
            
            if longestPrefix.count == 0 { return longestPrefix }
        }
        
        return longestPrefix
    }

}
