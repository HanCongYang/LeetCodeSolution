//
//  MultiplyStringsViewController.swift
//  LeetCodeSolution
//
//  Created by 李爱红 on 2018/10/10.
//  Copyright © 2018年 LAH. All rights reserved.
//

import UIKit

class MultiplyStringsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(multiply("9122", "0"))

    }
    
    
    
    func multiply(_ num1: String, _ num2: String) -> String {
        
        if num1 == "0" || num2 == "0" {
            return "0"
        }
     
        let num1Chars = Array(num1)
        let num2Chars = Array(num2)
        

        
        var result = Array(repeating: "", count: num1Chars.count + num2Chars.count + 1)
        
        for (i, a) in num1Chars.enumerated() {
            for (j, b) in num2Chars.enumerated() {

                var index = i + j + 1
                var multi = Int(String(a))! * Int(String(b))! + (Int(String(result[index])) ?? 0)
                result[index] = String(multi % 10)
                while multi / 10 > 0{
                    index = index - 1
                    multi = multi / 10 + (Int(String(result[index])) ?? 0)
                    result[index] = String(multi % 10)
                    
                }
            }
        }

        return result.joined()

    }
}
