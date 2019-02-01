//
//  ViewController.swift
//  First Task
//
//  Created by Дмитрий Скурихин on 31.01.2019.
//  Copyright © 2019 Дмитрий Скурихин. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        let mainView = MainView(frame: CGRect.zero)
        self.view.addSubview(mainView)
    }
}

