//
//  InterleavingStringViewController.swift
//  LeetCodeSolution
//
//  Created by 李爱红 on 2018/10/23.
//  Copyright © 2018年 LAH. All rights reserved.
//

import UIKit

class InterleavingStringViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        isInterleave("aabcc", "dbbcaaa", "aadbbbaccc")
    }


    func isInterleave(_ s1: String, _ s2: String, _ s3: String) -> Bool {
        
        if s1.count + s2.count != s3.count {
            return false
        }
        
        let s1Length = s1.count + 1
        let s2Length = s2.count + 1
        
        let s1Array = Array(s1)
        let s2Array = Array(s2)
        let s3Array = Array(s3)

        var array : [[Bool]] = [[Bool]](repeating: [Bool](repeating: false, count: s2Length), count: s1Length)
        
        for i in 0 ..< s1Length {
            for j in 0..<s2Length {
                if i == 0 && j == 0 {
                    array[i][j] = true
                }
                
                
                
                print(array[i][j])
            }
        }
        
//
//        var combine : [Character : Int] = [ : ]
//        for (_, char) in s1.enumerated() {
//            combine[char] = combine[char] ?? 0 + 1
//        }
//        for (_, char) in s2.enumerated() {
//            combine[char] = combine[char] ?? 0 + 1
//        }
//
//        var compare : [Character : Int] = [ : ]
//        for (_, char) in s3.enumerated() {
//            compare[char] = compare[char] ?? 0 + 1
//        }
//
//        if compare.count == combine.count {
//            if compare.keys == combine.keys {
//                for key in compare.keys {
//                    if compare[key] != combine[key] {
//                        return false
//                    }
//                    return true
//                }
//            }
//        }
        return false
    }
}
