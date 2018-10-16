//
//  ContainerWithMostWaterViewController.swift
//  LeetCodeSolution
//
//  Created by 李爱红 on 2018/10/16.
//  Copyright © 2018年 LAH. All rights reserved.
//

import UIKit

/* 11. Container With Most Water
 
 Given n non-negative integers a1, a2, ..., an , where each represents a point at coordinate (i, ai). n vertical lines are drawn such that the two endpoints of line i is at (i, ai) and (i, 0). Find two lines, which together with x-axis forms a container, such that the container contains the most water.
 
 Note: You may not slant the container and n is at least 2.
 
 Example:
 
 Input: [1,8,6,2,5,4,8,3,7]
 Output: 49
 
 */
/* Idea
 I've seen some "proofs" for the common O(n) solution, but I found them very confusing and lacking. Some even didn't explain anything but just used lots of variables and equations and were like "Tada! See?". I think mine makes more sense:
 
 Idea / Proof:
 
 The widest container (using first and last line) is a good candidate, because of its width. Its water level is the height of the smaller one of first and last line.
 All other containers are less wide and thus would need a higher water level in order to hold more water.
 The smaller one of first and last line doesn't support a higher water level and can thus be safely removed from further consideration.
 
 
 */
class ContainerWithMostWaterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print(maxArea([1,8,6,2,5,4,8,3,7]))
    }

    
    func maxArea(_ height: [Int]) -> Int {
        
        if height.count <= 1 {
            return 0
        }
        
        var water = 0
        var start = 0
        var end = height.count - 1

        while start < end {
            let area = min(height[start], height[end]) * (end - start)
            water = max(water, area)
            if height[start] < height[end] {
                start = start + 1
            } else {
                end = end - 1
            }
        }
        return water
    }
}
