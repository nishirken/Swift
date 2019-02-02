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
    var segmentedControl: UIStepper!
    var slider: UISlider!
    var calculateButton: UIButton!
    var resultLabel: UILabel!
    let formatter: NumberFormatter = NumberFormatter()
    
    var firstOperandValue: Double = 0.0000
    var secondOperandValue: Float = 0.0000
    
    override func viewDidLoad() {
        let mainView = MainView(frame: CGRect.zero)
        self.view = mainView
        self.firstOperandResultLabel = mainView.firstOperandView.resultLabel
        self.secondOperandResultLabel = mainView.secondOperandView.resultLabel
        self.calculateButton = mainView.calculateButton
        self.resultLabel = mainView.resultLabel
        self.firstOperandResultLabel.text = "1"
        self.secondOperandResultLabel.text = "1"
        self.resultLabel.text = "1"
        self.slider = mainView.secondOperandView.slider
        self.segmentedControl = mainView.firstOperandView.segmentedControl
        self.slider.minimumValue = 1
        self.slider.maximumValue = 100
        self.slider.value = self.secondOperandValue
        self.segmentedControl.minimumValue = 0
        self.segmentedControl.maximumValue = 10
        self.segmentedControl.stepValue = 0.5

        self.calculateButton.addTarget(self, action: #selector(self.calculate), for: .touchUpInside)
        self.slider.addTarget(self, action: #selector(self.changeSecondValue), for: .valueChanged)
        self.segmentedControl.addTarget(self, action: #selector(self.changeFirstValue), for: .valueChanged)
        self.formatter.maximumFractionDigits = 4
        self.formatter.minimumFractionDigits = 0
        self.formatter.numberStyle = .decimal
        super.viewDidLoad()
    }
    
    @objc private func calculate(sender: UIButton!) {
        self.resultLabel.text = self.formatter.string(from: NSNumber(value: Float(self.firstOperandValue) * self.secondOperandValue))
    }
    
    @objc private func changeSecondValue(sender: UISlider!) {
        self.secondOperandValue = sender.value
        self.secondOperandResultLabel.text = self.formatter.string(from: NSNumber(value: sender.value))
    }
    
    @objc private func changeFirstValue(sender: UIStepper!) {
        self.firstOperandValue = sender.value
        self.firstOperandResultLabel.text = self.formatter.string(from: NSNumber(value: self.firstOperandValue))
    }
}

