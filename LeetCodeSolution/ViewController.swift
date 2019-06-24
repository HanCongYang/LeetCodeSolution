//
//  ViewController.swift
//  LeetCodeSolution
//
//  Created by 李爱红 on 2018/9/28.
//  Copyright © 2018年 LAH. All rights reserved.
//

import UIKit

/*
 用来解决问题的常见算法
 1.递归
 2.动态规划
 3.二分法
 
 */


class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    let tb : UITableView = UITableView(frame: CGRect.zero)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tb.delegate = self;
        tb.dataSource = self;
        tb.frame = self.view.frame
        tb.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        self.view.addSubview(tb)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        tb.scrollToRow(at: IndexPath(row: 15, section: 0), at: UITableViewScrollPosition.middle, animated: true)
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1;
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1000
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")!
        switch indexPath.row {
        case 1:
            cell.textLabel?.text = "2. Add Two Number"
        case 2:
            cell.textLabel?.text = "3. Longest Substring Without Repeating Characters"
        case 3:
            cell.textLabel?.text = "4. Median of Two Sorted Arrays"
        case 5:
            cell.textLabel?.text = "6. ZigZag Conversion"
        case 8:
            cell.textLabel?.text = "9. Palindrome Number"
        case 10:
            cell.textLabel?.text = "11. Container With Most Water"
        case 11:
            cell.textLabel?.text = "12. Integer to Roman"
        case 12:
            cell.textLabel?.text = "13. Roman to Integer"
        case 13:
            cell.textLabel?.text = "14. Longest Common Prefix"
        case 14:
            cell.textLabel?.text = "15. 3Sum"
        case 15:
            cell.textLabel?.text = "16. 3Sum Closest"
        case 17:
            cell.textLabel?.text = "18. 4Sum"
        case 48:
            cell.textLabel?.text = "48. Rotate Image"
        case 52:
            cell.textLabel?.text = "53. Maximum Subarray"
        case 74:
            cell.textLabel?.text = "75. Sort Colors"
        case 95:
            cell.textLabel?.text = "96. Unique Binary Search Trees"
        case 96:
            cell.textLabel?.text = "97. Interleaving String"
        case 99:
            cell.textLabel?.text = "100. Same Tree"
        case 120:
            cell.textLabel?.text = "121. Best Time to Buy and Sell Stock"
        case 197:
            cell.textLabel?.text = "198. House Robber"
        case 200:
            cell.textLabel?.text = "201. Bitwise AND of Numbers Range"
        case 201:
            cell.textLabel?.text = "202. Happy Number"
        case 202:
            cell.textLabel?.text = "203. Remove Linked List Elements"
        case 203:
            cell.textLabel?.text = "204. Count Primes"

        default:
            cell.textLabel?.text = "to do"
            break
        }
        return cell;
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        var vc : UIViewController?
        switch indexPath.row {
        case 1:
            vc = AddTwoNumbersViewController()
        case 2:
            vc = LongestSubstringWithoutRepeatingCharactersViewController()
        case 3:
            vc = MedianOfTwoSortedArraysViewController()
        case 5:
            vc = ZigZagConversionViewController()
        case 8:
            vc = PalindromeNumberViewController()
        case 10:
            vc = ContainerWithMostWaterViewController()
        case 11:
            vc = IntegerToRomanViewController()
        case 12:
            vc = RomanToIntegerViewController()
        case 13:
            vc = LongestCommonPrefixViewController()
        case 14:
            vc = ThreeSumViewController()
        case 15:
            vc = ThreeSumClosestViewController()
        case 17:
            vc = FourSumViewController()
        case 48:
            vc = MultiplyStringsViewController()
        case 52:
            vc = MaximumSubarrayViewController()
        case 74:
            vc = SortColorsViewController()
        case 96:
            vc = InterleavingStringViewController()
        case 95:
            vc = UniqueBinarySearchTreesViewController()
        case 99:
            vc = SameTreeViewController()
        case 120:
            vc = BestTimeToBuyAndSellStockViewController()
        case 197:
            vc = HouseRobberViewController()
        case 200:
            vc = BitwiseAndOfNumbersRangeViewController()
        case 201:
            vc = HappyNumberViewController()
        case 202:
            vc = RemoveLinkedListElementsViewController()
        case 203:
            vc = CountPrimesViewController()
        default: break
        
        }
        
        if let vc : UIViewController = vc {
            self.navigationController?.pushViewController(vc, animated:true)
        }
        

    }
}

