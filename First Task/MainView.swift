//
//  MainView.swift
//  First Task
//
//  Created by Дмитрий Скурихин on 01.02.2019.
//  Copyright © 2019 Дмитрий Скурихин. All rights reserved.
//

import UIKit

class MainView: UIView {
    var window: UIWindow!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.window = UIWindow(frame: frame)
        self.window.backgroundColor = UIColor(named: "Background")
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func updateConstraints() {
        super.updateConstraints()
    }
}
