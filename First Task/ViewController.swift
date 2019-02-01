//
//  ViewController.swift
//  First Task
//
//  Created by Дмитрий Скурихин on 31.01.2019.
//  Copyright © 2019 Дмитрий Скурихин. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var firstOperandResultLabel: UILabel!
    var secondOperandResultLabel: UILabel!
    var calculateButton: UIButton!
    
    var firstOperandValue: String = "22"
    var secondOperandValue: String = "33"
    
    override func viewDidLoad() {
        let mainView = MainView(frame: CGRect.zero)
        self.view = mainView
        self.firstOperandResultLabel = mainView.firstOperandResultLabel
        self.secondOperandResultLabel = mainView.secondOperandResultLabel
        self.calculateButton = mainView.calculateButton
        self.firstOperandResultLabel.text = self.firstOperandValue
        self.secondOperandResultLabel.text = self.secondOperandValue
        super.viewDidLoad()
    }
}

