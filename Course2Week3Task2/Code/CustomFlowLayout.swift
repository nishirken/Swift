//
//  CustomFlowLayout.swift
//  Course2Week3Task2
//
//  Copyright © 2018 e-Legion. All rights reserved.
//

import UIKit

class CustomFlowLayout: UICollectionViewFlowLayout {
    override func layoutAttributesForItem(at indexPath: IndexPath) -> UICollectionViewLayoutAttributes? {
                print("attrs")
        let attrs = super.layoutAttributesForItem(at: indexPath)

        return attrs
    }
}
