//
//  FirstViewController.swift
//  PreClassDemo
//
//  Created by JJ Guo on 11/14/18.
//  Copyright © 2018 JJ Guo. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet var hapticButtons: [UIButton]!
    @IBOutlet var labels: [UILabel]!
    
    let fontType = "HelveticaNeue"
    let fontTypeBold = "HelveticaNeue-Bold"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Loop through button collection changing corner radius, text color, and font
        for btn in hapticButtons {
            btn.layer.cornerRadius = btn.frame.size.height / 2
            btn.setTitleColor(.white, for: .normal)
            btn.titleLabel?.font = UIFont(name: fontType, size: 17)
        }
        for lbl in labels {
            lbl.font = UIFont(name: fontTypeBold, size: 20)
        }
    }
    
    @IBAction func errorPressed(_ sender: Any) {
        let generator = UINotificationFeedbackGenerator()
        generator.notificationOccurred(.error)
    }
    
    @IBAction func successPressed(_ sender: Any) {
        let generator = UINotificationFeedbackGenerator()
        generator.notificationOccurred(.success)
    }
    
    @IBAction func warningPressed(_ sender: Any) {
        let generator = UINotificationFeedbackGenerator()
        generator.notificationOccurred(.warning)
    }
    
    @IBAction func lightPressed(_ sender: Any) {
        let generator = UIImpactFeedbackGenerator(style: .light)
        generator.prepare()
        generator.impactOccurred()
    }
    
    @IBAction func mediumPressed(_ sender: Any) {
        let generator = UIImpactFeedbackGenerator(style: .medium)
        generator.prepare()
        generator.impactOccurred()
    }
    
    @IBAction func heavyPressed(_ sender: Any) {
        let generator = UIImpactFeedbackGenerator(style: .heavy)
        generator.prepare()
        generator.impactOccurred()
    }
    
    @IBAction func selectionPressed(_ sender: Any) {
        let generator = UISelectionFeedbackGenerator()
        generator.selectionChanged()
    }
    
    
}
