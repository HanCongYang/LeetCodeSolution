//
//  IntegerToRomanViewController.swift
//  LeetCodeSolution
//
//  Created by 李爱红 on 2018/10/24.
//  Copyright © 2018年 LAH. All rights reserved.
//

import UIKit

class IntegerToRomanViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func intToRoman(_ num: Int) -> String {
        
        var M : [String] = ["", "M", "MM", "MMM"]
        var C : [String] = ["", "C", "CC", "CCC", "CD", "D", "DC", "DCC", "DCCC", "CM"]
        var X : [String] = ["", "X", "XX", "XXX", "XL", "L", "LX", "LXX", "LXXX", "XC"]
        var I : [String] = ["", "I", "II", "III", "IV", "V", "VI", "VII", "VIII", "IX"]
        return M[num / 1000] + C[(num % 1000) / 100] + X[(num % 100) / 10] + I[num % 10]
    }

}
