//
//  RotateImageViewController.swift
//  LeetCodeSolution
//
//  Created by 李爱红 on 2018/10/11.
//  Copyright © 2018年 LAH. All rights reserved.
//

import UIKit

/*
 
 https://leetcode.com/problems/rotate-image/description/

 You are given an n x n 2D matrix representing an image.
 
 Rotate the image by 90 degrees (clockwise).
 
 Note:
 
 You have to rotate the image in-place, which means you have to modify the input 2D matrix directly. DO NOT allocate another 2D matrix and do the rotation.
 
 Example 1:
 
 Given input matrix =
 [
 [1,2,3],
 [4,5,6],
 [7,8,9]
 ],
 
 rotate the input matrix in-place such that it becomes:
 [
 [7,4,1],
 [8,5,2],
 [9,6,3]
 ]
 Example 2:
 
 Given input matrix =
 [
 [ 5, 1, 9,11],
 [ 2, 4, 8,10],
 [13, 3, 6, 7],
 [15,14,12,16]
 ],
 
 rotate the input matrix in-place such that it becomes:
 [
 [15,13, 2, 5],
 [14, 3, 4, 1],
 [12, 6, 8, 9],
 [16, 7,10,11]
 ]
 
 */

class RotateImageViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var matrix =  [
        [7,4,1],
        [8,5,2],
        [9,6,3]
        ]
        rotate(&matrix)
    }
    
    func rotate(_ matrix: inout [[Int]]) {
        
        let temp = matrix;
        
        for i in 0..<matrix.count
        {
            for j in 0..<matrix[0].count
            {
                matrix[j][matrix[0].count - 1 - i] = temp[i][j];
            }
        }
    }
}
