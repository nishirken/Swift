//
//  MainView.swift
//  First Task
//
//  Created by Дмитрий Скурихин on 01.02.2019.
//  Copyright © 2019 Дмитрий Скурихин. All rights reserved.
//

import UIKit

class MainView: UIView {
    public static let sidePadding = 16
    public static let topPadding = 32
    public static let bottomPadding = 16
    public static let resultLabelHeight = 60
    public static let labelFontSize = 17
    public static let fullWidth: Int = {
        return Int(UIScreen.main.bounds.width) - MainView.sidePadding * 2
    }()
    
    public var firstOperandView: FirstOperandView!
    public var secondOperandView: SecondOperandView!
    
    let calculateButton: UIButton = {
        let button = UIButton(type: .custom)
        button.setTitle("Calculate", for: .normal)
        button.backgroundColor = UIColor(named: "Primary")
        button.setTitleColor(.white, for: .normal)
        let buttonHeight = 60
        let y = Int(UIScreen.main.bounds.height) - MainView.bottomPadding - buttonHeight
        button.frame = CGRect(x: MainView.sidePadding, y: y, width: MainView.fullWidth, height: 60)
        return button
    }()
    
    let resultLabel: UILabel = {
        let label = UILabel()
        label.backgroundColor = UIColor(named: "InputBackground")
        label.textColor = .black
        label.textAlignment = .right
        label.font = UIFont(name: label.font.fontName, size: 32)
        label.frame = CGRect(x: MainView.sidePadding, y: MainView.topPadding, width: MainView.fullWidth, height: 60)
        return label
    }()
    
    private func styleMainView() {
        self.backgroundColor = UIColor(named: "Background")
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.styleMainView()
        self.addSubview(self.resultLabel)
        self.addSubview(self.calculateButton)
        self.firstOperandView = FirstOperandView(frame: CGRect(
            x: MainView.sidePadding,
            y: MainView.topPadding + MainView.resultLabelHeight + 32,
            width: MainView.fullWidth,
            height: 17 + 16 + FirstOperandView.segmentedControlHeight
        ))
        self.addSubview(self.firstOperandView)
        self.secondOperandView = SecondOperandView(frame: CGRect(
            x: MainView.sidePadding,
            y: MainView.topPadding + MainView.resultLabelHeight + 32 + Int(firstOperandView.bounds.height) + 32,
            width: MainView.fullWidth,
            height: 17 + 16 + SecondOperandView.sliderHeight
        ))
        self.addSubview(self.secondOperandView)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
