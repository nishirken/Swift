//
//  FirstOperandView.swift
//  FirstTask
//
//  Created by Shadow on 02/02/2019.
//  Copyright © 2019 Дмитрий Скурихин. All rights reserved.
//

import UIKit

class FirstOperandView: UIView {
    public static let segmentedControlHeight = 28
    
    let label: UILabel = {
        let label = UILabel()
        label.text = "First operand"
        label.textColor = .white
        label.frame = CGRect(x: 0, y: 0, width: MainView.fullWidth, height: 17)
        return label
    }()
    
    let resultLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        let y = 17 + 16 + (FirstOperandView.segmentedControlHeight - 17) / 2
        label.frame = CGRect(x: 0, y: y, width: 200, height: 17)
        return label
    }()
    
    let segmentedControl: UIStepper = {
        let control = UIStepper()
        control.tintColor = UIColor(named: "Primary")
        let width = Int(UISlider().bounds.width)
        let x = MainView.fullWidth - width
        control.frame =
            CGRect(x: x, y: 17 + 16, width: width, height: FirstOperandView.segmentedControlHeight)
        return control
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addSubview(self.label)
        self.addSubview(self.resultLabel)
        self.addSubview(self.segmentedControl)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
