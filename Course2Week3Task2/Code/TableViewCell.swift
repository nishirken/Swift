//
//  TableViewCell.swift
//  Course2Week3Task2
//
//  Created by Shadow on 04/02/2019.
//  Copyright © 2019 e-Legion. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    @IBOutlet var photo: UIImageView!
    @IBOutlet var label: UILabel!
    @IBOutlet var button: UIButton!
    
    @IBAction func buttonClick(_ sender: Any) {
        print("Accessory selected")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }

}
