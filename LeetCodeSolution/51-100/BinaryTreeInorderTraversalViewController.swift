//
//  BinaryTreeInorderTraversalViewController.swift
//  LeetCodeSolution
//
//  Created by 李爱红 on 2018/11/13.
//  Copyright © 2018年 LAH. All rights reserved.
//

public class TreeNode {
  public var val: Int
  public var left: TreeNode?
  public var right: TreeNode?
  public init(_ val: Int) {
      self.val = val
      self.left = nil
      self.right = nil
  }
}
 

import UIKit

class BinaryTreeInorderTraversalViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func inorderTraversal(_ root: TreeNode?) -> [Int] {
        
        guard root != nil else {
            return []
        }
        
        var result : [Int] = []
        var stack : [TreeNode] = []
        var cur : TreeNode? = root

        while cur != nil || !stack.isEmpty {
            while cur != nil {
                stack.append(cur!)
                cur = cur?.left
            }
            
            cur = stack.last
            stack.removeLast()
            result.append(cur?.val ?? 0)
            cur = cur?.right
        }
        return result
    }
    
}
