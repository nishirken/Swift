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
    private var leftColumnHeight: CGFloat = 0
    private var rightColumnHeight: CGFloat = 0
    private var cachedAttributes: [UICollectionViewLayoutAttributes] = []
    private var cachedIndexPaths: [IndexPath] = []

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
    
    override func layoutAttributesForElements(in rect: CGRect) -> [UICollectionViewLayoutAttributes]? {
        guard let attrs = super.layoutAttributesForElements(in: rect) else {
            return nil
        }
        let onlyNew = attrs.filter { !self.cachedIndexPaths.contains($0.indexPath) }
        let copiedAttributes = onlyNew.map { $0.copy() } as! [UICollectionViewLayoutAttributes]
        
        for attr in copiedAttributes {
            if (attr.representedElementCategory == .cell) {
                if (self.leftColumnHeight <= self.rightColumnHeight) {
                    self.pushToLeftColumn(attr: attr)
                } else {
                    self.pushToRightColumn(attr: attr)
                }
            }
        }

        return self.cachedAttributes
    }

    private func pushToLeftColumn(attr: UICollectionViewLayoutAttributes) {
        attr.frame = CGRect(x: self.layoutPadding, y: self.leftColumnHeight, width: attr.frame.width, height: attr.frame.height)
        self.saveAttribute(attr: attr)
        self.leftColumnHeight += (attr.frame.height + self.spaceBetweenLines)
    }
    
    private func pushToRightColumn(attr: UICollectionViewLayoutAttributes) {
        attr.frame = CGRect(x: self.layoutPadding + attr.frame.width + self.spaceBetweenColumns, y: self.rightColumnHeight, width: attr.frame.width, height: attr.frame.height)
        self.saveAttribute(attr: attr)
        self.rightColumnHeight += (attr.frame.height + self.spaceBetweenLines)
    }
    
    private func saveAttribute(attr: UICollectionViewLayoutAttributes) {
        self.cachedAttributes.append(attr)
        self.cachedIndexPaths.append(attr.indexPath)
    }
}
