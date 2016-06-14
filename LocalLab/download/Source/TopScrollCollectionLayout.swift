//
//  TopScrollCollectionLayout.swift
//  Demo0
//
//  Created by MieJie on 16/6/13.
//  Copyright © 2016年 MieJie. All rights reserved.
//

import UIKit

class TopScrollCollectionLayout: UICollectionViewFlowLayout {
    
    var rawSpace:CGFloat = 0
    
    override func prepareLayout() {
        super.prepareLayout()
        self.itemSize = CGSizeMake(SCREEN_WIDTH/3, 100)
        self.sectionInset = UIEdgeInsetsZero
        self.scrollDirection = .Horizontal
    }
    
    override func collectionViewContentSize() -> CGSize {
        return CGSizeMake((SCREEN_WIDTH/3+rawSpace)*5, 100)
    }
    
    override func shouldInvalidateLayoutForBoundsChange(newBounds: CGRect) -> Bool {
        return true
    }
    
    override func layoutAttributesForElementsInRect(rect: CGRect) -> [UICollectionViewLayoutAttributes]? {
        var resultingAttributes = [UICollectionViewLayoutAttributes]()
        let rawCount = collectionView!.numberOfItemsInSection(0)
        for  iPath in 0..<rawCount {
            let indexPath = NSIndexPath(forRow: iPath, inSection: 0)
            let attributes = layoutAttributesForItemAtIndexPath(indexPath)!
            resultingAttributes.append(attributes)
        }
        return resultingAttributes
    }
    
    override func layoutAttributesForItemAtIndexPath(indexPath: NSIndexPath) -> UICollectionViewLayoutAttributes? {
        let attributes = UICollectionViewLayoutAttributes(forCellWithIndexPath: indexPath)
        var point = CGPointMake(0, 0)
        point.x = CGFloat(indexPath.row) * (SCREEN_WIDTH/3+rawSpace)
        attributes.frame = CGRect(origin: point, size: itemSize)
        return attributes
    }
}
