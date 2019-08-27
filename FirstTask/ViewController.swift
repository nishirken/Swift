//
//  ViewController.swift
//  First Task
//
//  Created by Дмитрий Скурихин on 31.01.2019.
//  Copyright © 2019 Дмитрий Скурихин. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var firstOperand: UILabel!
    var secondOperand: UILabel!
    var segmentedControl: UIStepper!
    var slider: UISlider!
    var calculateButton: UIButton!
    var resultLabel: UILabel!
    
    var firstOperandValue: Double = 1.0000
    var secondOperandValue: Double = 1.0000
    
    let resultFormatter: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.maximumFractionDigits = 4
        formatter.minimumFractionDigits = 0
        formatter.numberStyle = .decimal
        return formatter
    }()
    let operandFormatter: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.maximumFractionDigits = 4
        formatter.minimumFractionDigits = 4
        formatter.numberStyle = .decimal
        return formatter
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let mainView = MainView(frame: CGRect.zero)
        self.view = mainView
        self.firstOperand = mainView.firstOperandView.resultLabel
        self.secondOperand = mainView.secondOperandView.resultLabel
        self.calculateButton = mainView.calculateButton
        self.resultLabel = mainView.resultLabel
        self.slider = mainView.secondOperandView.slider
        self.segmentedControl = mainView.firstOperandView.segmentedControl
        self.slider.minimumValue = Float(self.secondOperandValue)
        self.slider.maximumValue = 100
        self.slider.value = Float(self.secondOperandValue)
        self.segmentedControl.minimumValue = self.firstOperandValue
        self.segmentedControl.maximumValue = 10
        self.segmentedControl.stepValue = 0.5
        self.calculateButton.addTarget(self, action: #selector(self.calculate), for: .touchUpInside)
        self.slider.addTarget(self, action: #selector(self.changeSecondValue), for: .valueChanged)
        self.segmentedControl.addTarget(self, action: #selector(self.changeFirstValue), for: .valueChanged)
        self.printResult()
        self.firstOperand.text = self.operandFormatter.string(from: NSNumber(value: self.firstOperandValue))
        self.secondOperand.text = self.operandFormatter.string(from: NSNumber(value: self.secondOperandValue))
    }
    
    private func printResult() {
        self.resultLabel.text = self.resultFormatter.string(from: NSNumber(value: self.firstOperandValue * self.secondOperandValue))
    }

    @objc func calculate(_ sender: UIButton!) {
        printResult()
    }

    @objc func changeSecondValue(_ sender: UISlider!) {
        self.secondOperandValue = Double(sender.value)
        self.secondOperand.text = self.operandFormatter.string(from: NSNumber(value: self.secondOperandValue))
    }

    @objc func changeFirstValue(_ sender: UIStepper!) {
        self.firstOperandValue = sender.value
        self.firstOperand.text = self.operandFormatter.string(from: NSNumber(value: self.firstOperandValue))
    }
}

