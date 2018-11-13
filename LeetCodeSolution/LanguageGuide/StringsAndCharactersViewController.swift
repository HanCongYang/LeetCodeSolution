//
//  StringsAndCharactersViewController.swift
//  LeetCodeSolution
//
//  Created by 李爱红 on 2018/10/17.
//  Copyright © 2018年 LAH. All rights reserved.
//

import UIKit

class StringsAndCharactersViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        

        let greeting = "Hi there! It's nice to meet you! 👋"
        let endOfSentence = greeting.firstIndex(of: "!")!
        let firstSentence = greeting[...endOfSentence]
        

    }
}
