//
//  ViewController.swift
//  PreClassDemo
//
//  Created by JJ Guo on 11/14/18.
//  Copyright © 2018 JJ Guo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func letterGradeCheck(grade: Double) -> String {
        if grade >= 90 {
            return "A"
        } else if grade >= 80 {
            return "B"
        } else if grade >= 70 {
            return "C"
        } else if grade >= 60 {
            return "D"
        } else {
            return "F"
        }
    }


}

