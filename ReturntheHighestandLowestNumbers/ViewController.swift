//
//  ViewController.swift
//  ReturntheHighestandLowestNumbers
//
//  Created by Daniel Washington Ignacio on 23/06/21.
//

/*
 Create a function that accepts a string of space separated numbers and returns the highest and lowest number (as a string).

 Examples

 highLow("1 2 3 4 5") ➞ "5 1"

 highLow("1 2 -3 4 5") ➞ "5 -3"

 highLow("1 9 3 4 -5") ➞ "9 -5"

 highLow("13") ➞ "13 13"
 Notes

 All numbers are valid Int32, no need to validate them.
 There will always be at least one number in the input string.
 Output string must be two numbers separated by a single space, and highest number is first.
 */

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print(self.highLow("1 2 3 4 5"))
        print(self.highLow("1 2 -3 4 5"))
        print(self.highLow("1 9 3 4 -5"))
        print(self.highLow("13"))
    }
    
    func highLow(_ str: String) -> String {
        let min = str.components(separatedBy: " ").min() ?? ""
        let max = str.components(separatedBy: " ").max() ?? ""
        return "\(max) \(min) "
    }


}

