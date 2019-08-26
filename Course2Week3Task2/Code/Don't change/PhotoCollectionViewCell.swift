//
//  PhotoCollectionViewCell.swift
//  Course2Week3Task2
//
//  Copyright © 2018 e-Legion. All rights reserved.
//

import UIKit

class PhotoCollectionViewCell: UICollectionViewCell {

    struct Const {
        static let photoLabelHeight: CGFloat = 30.0
        static let photoLabelBackgroundAlpha: CGFloat = 0.7
    }
    
    @IBOutlet var photoImageView: UIImageView!
    @IBOutlet var photoNameLabel: UILabel!
    
    // MARK: - Override
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.backgroundColor = .green
        print(self.photoNameLabel)
//        photoNameLabel.backgroundColor = UIColor.white.withAlphaComponent(Const.photoLabelBackgroundAlpha)
//        photoImageView.contentMode = .scaleAspectFill
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        print(self.photoNameLabel)
//        photoImageView.frame = bounds
//        photoNameLabel.frame = CGRect(x: 0,
//                                      y: frame.height - Const.photoLabelHeight,
//                                      width: frame.width,
//                                      height: Const.photoLabelHeight)
    }
    
    // MARK: - Public
    
    func configure(with photo: Photo) {
        print(self.photoNameLabel)
//        photoImageView.image = photo.image
//
//        photoNameLabel.text = photo.name
//        photoNameLabel.sizeToFit()
        
        setNeedsLayout()
    }
}
