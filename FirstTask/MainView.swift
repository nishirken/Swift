//
//  MainView.swift
//  First Task
//
//  Created by Дмитрий Скурихин on 01.02.2019.
//  Copyright © 2019 Дмитрий Скурихин. All rights reserved.
//

import UIKit

class MainView: UIView {
    let segmentedControl: UISegmentedControl = {
        let control = UISegmentedControl(items: ["-", "+"])
        control.frame = CGRect(x: 200, y: 200, width: 100, height: 32)
        control.tintColor = UIColor(named: "Primary")
        return control
    }()
    
    let calculateButton: UIButton = {
        let button = UIButton(type: .custom)
        button.setTitle("Calculate", for: .normal)
        button.backgroundColor = UIColor(named: "Primary")
        button.setTitleColor(.white, for: .normal)
        button.frame = CGRect(x: 16, y: 400, width: 100, height: 60)
        return button
    }()
    
    let resultLabel: UILabel = {
        let label = UILabel()
        label.backgroundColor = UIColor(named: "InputBackground")
        label.frame = CGRect(x: 16, y: 32, width: 200, height: 60)
        label.textColor = .black
        label.font = UIFont(name: label.font.fontName, size: 32)
        return label
    }()
    
    let firstOperandLabel: UILabel = {
        let label = UILabel()
        label.text = "First operand"
        label.textColor = .white
        label.frame = CGRect(x: 16, y: 100, width: 200, height: 20)
        return label
    }()
    
    let secondOperandLabel: UILabel = {
        let label = UILabel()
        label.text = "Second operand"
        label.textColor = .white
        label.frame = CGRect(x: 16, y: 150, width: 200, height: 20)
        return label
    }()
    
    let firstOperandResultLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.frame = CGRect(x: 16, y: 130, width: 200, height: 20)
        return label
    }()
    
    let secondOperandResultLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.frame = CGRect(x: 16, y: 180, width: 200, height: 20)
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor(named: "Background")
        self.addSubview(self.segmentedControl)
        self.addSubview(self.calculateButton)
        self.addSubview(self.resultLabel)
        self.addSubview(self.firstOperandLabel)
        self.addSubview(self.secondOperandLabel)
        self.addSubview(self.firstOperandResultLabel)
        self.addSubview(self.secondOperandResultLabel)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func updateConstraints() {
        super.updateConstraints()
    }
}
