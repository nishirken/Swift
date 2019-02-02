//
//  SecondOperandView.swift
//  FirstTask
//
//  Created by Shadow on 02/02/2019.
//  Copyright © 2019 Дмитрий Скурихин. All rights reserved.
//

import UIKit

class SecondOperandView: UIView {
    public static let sliderHeight = 23
    
    let label: UILabel = {
        let label = UILabel()
        label.text = "Second operand"
        label.textColor = .white
        label.frame = CGRect(x: 0, y: 0, width: MainView.fullWidth, height: 17)
        return label
    }()
    
    let resultLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        let y = 17 + 16 + (SecondOperandView.sliderHeight - 17) / 2
        label.frame = CGRect(x: 0, y: y, width: 200, height: 17)
        return label
    }()
    
    let slider: UISlider = {
        let slider = UISlider()
        slider.tintColor = UIColor(named: "Primary")
        let y = 17 + 16
        let x = MainView.fullWidth - Int(slider.bounds.width)
        slider.frame =
            CGRect(x: x, y: y, width: Int(slider.bounds.width), height: Int(slider.bounds.height))
        return slider
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addSubview(self.label)
        self.addSubview(self.resultLabel)
        self.addSubview(self.slider)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
