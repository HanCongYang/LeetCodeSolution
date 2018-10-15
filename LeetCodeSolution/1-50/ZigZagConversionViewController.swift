//
//  ZigZagConversionViewController.swift
//  LeetCodeSolution
//
//  Created by 李爱红 on 2018/10/15.
//  Copyright © 2018年 LAH. All rights reserved.
//

import UIKit

class ZigZagConversionViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()


        print(convert("AB", 1))
    }
    
    func convert(_ s: String, _ numRows: Int) -> String {
        if numRows == 1 {
            return s
        }
        var stringArray: Array<Character> = Array(s)

        var answerArray: Array<String> = Array(repeating: String(), count: numRows)
        var flag: Int = 0
        var currentRow: Int = 0
        var answer: String = String()
        for i in 0..<stringArray.count {
            if (flag + i) % numRows == 0 {
                flag += 1
            }
            answerArray[currentRow].append(stringArray[i])
            if flag % 2 == 0 {
                currentRow -= 1
            } else {
                currentRow += 1
            }
        }
        for str in answerArray {
            answer += str
        }
        return answer
    }
    
//    func convert(_ s: String, _ numRows: Int) -> String {
//
//        if s.count <= 1 {
//            return s
//        }
//
//        if numRows <= 1 {
//            return s
//        }
//
//        var arr : Array<String> = Array(repeating:"", count: numRows)
//        for (index, char) in Array(s).enumerated() {
//
//            var i = index % (numRows * 2 - 2)
//            if i - numRows < 0 {
//
//            } else {
//                i = numRows * 2 - 2 - i
//            }
//            arr[i].append(char)
////            let str : String = arr[i]
////            arr[i] = str + (String(char))
//
//        }
//        var str = ""
//        for array in arr {
//            let tempS = String(array)
//            str.append(tempS)
//        }
//
//        return str
//    }
}
