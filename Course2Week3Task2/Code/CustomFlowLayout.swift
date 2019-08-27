//
//  CustomFlowLayout.swift
//  Course2Week3Task2
//
//  Copyright © 2018 e-Legion. All rights reserved.
//

import UIKit

class CustomFlowLayout: UICollectionViewFlowLayout, UICollectionViewDelegateFlowLayout {
    private let layoutPadding: CGFloat = 16.0
    private let spaceBetweenColumns: CGFloat = 16.0
    private let spaceBetweenLines: CGFloat = 16.0

    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        let height: CGFloat = indexPath.item == 0 ? 300 : 200
        return CGSize(width: (UIScreen.main.bounds.width - (self.layoutPadding * 2 + self.spaceBetweenColumns)) / 2, height: height)
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0.0, left: self.layoutPadding, bottom: 0.0, right: self.layoutPadding)
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return self.spaceBetweenLines
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return self.spaceBetweenColumns
    }
}
