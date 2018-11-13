//
//  MedianOfTwoSortedArraysViewController.swift
//  LeetCodeSolution
//
//  Created by 李爱红 on 2018/10/29.
//  Copyright © 2018年 LAH. All rights reserved.
//

import UIKit

class MedianOfTwoSortedArraysViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        print(findMedianSortedArrays([0,1,2,3,4,5,6,7,8,9,10,11,12], [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19]))
    }
    
    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {

        let n1 = nums1.count
        let n2 = nums2.count
        if n1 < n2 {
            return findMedianSortedArrays(_:nums2, _:nums1)
        }

        var lo = 0
        var hi = n2 * 2
        while lo <= hi {
            let mid2 = (lo + hi) / 2
            let mid1 = n1 + n2 - mid2
            print("lo = \(lo), hi = \(hi)")

            let L1 = (mid1 == 0) ? Int.min : nums1[(mid1 - 1) / 2]
            let L2 = (mid2 == 0) ? Int.min : nums2[(mid2 - 1) / 2]
            let R1 = (mid1 == n1 * 2) ? Int.max : nums1[(mid1) / 2]
            let R2 = (mid2 == n2 * 2) ? Int.max : nums2[(mid2) / 2]
//            print("L1 = \(L1), R1 = \(R1), L2 = \(L2), R2 = \(R2)")
//            print("L1 = \((mid1 - 1) / 2), R1 = \((mid1) / 2), L2 = \((mid2 - 1) / 2),  R2 = \((mid2) / 2)")

            if (L1 > R2) {
                lo = mid2 + 1
            } else if (L2 > R1) {
                hi = mid2 - 1
            } else {
                return Double(max(L1, L2) + min(R1, R2)) / 2.0
            }
        }

        return 0.0

    }

    
//    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
//
//        var n1 = nums1.count
//        var n2 = nums2.count
//        if n1 > n2 {
//            return findMedianSortedArrays(_:nums2, _:nums1)
//        }
    
        
        
        
//        var i = 0, j = 0
//        var m = nums1.count, n = nums2.count
//        var arr1 = nums1, arr2 = nums2
//        if m > n {
//            swap(&m, &n)
//            swap(&arr1, &arr2)
//        }
//        let half = (m + n) / 2
//
//        var leftMax = 0, rightMin = 0
//
//        // 长度为m的数组分割，有m+1种分割方法，所以 0 <= i <= m
//        var min = 0, max = m
//        while min <= max {
//            i = (min + max) / 2
//            j = half - i
//            if i > 0 && arr1[i-1] > arr2[j] {
//                max = i - 1
//            } else if i < m && arr2[j-1] > arr1[i] {
//                min = i + 1
//            } else {
//                // arr1 所有元素都在左边，则min(Right) = arr2[j]
//                if i == m {
//                    rightMin = arr2[j]
//                } else if j == n {
//                    rightMin = arr1[i]
//                } else {
//                    rightMin = arr1[i] > arr2[j] ? arr2[j] : arr1[i]
//                }
//
//                if (m + n) % 2 == 1 {
//                    return Double(rightMin)
//                }
//
//                if i == 0 {
//                    leftMax = arr2[j - 1]
//                } else if j == 0 {
//                    leftMax = arr1[i - 1]
//                } else {
//                    leftMax = arr1[i-1] > arr2[j-1] ? arr1[i-1] : arr2[j-1]
//                }
//                return Double(leftMax + rightMin) / 2.0
//            }
//        }
//        return 0
//    }

    // 不推荐的答案
//    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
//        var totalArray = nums1 + nums2
//        var resultArray = totalArray.sorted()
//
//        if resultArray.count % 2 == 1 {
//            var midPoint = (resultArray.count - 1) / 2
//            return Double(resultArray[midPoint])
//
//        } else {
//            var left = resultArray.count / 2 - 1
//            var right = resultArray.count / 2
//            print(right)
//            return Double((Double(resultArray[left]) + Double(resultArray[right])) / 2)
//        }
//    }
    
}
