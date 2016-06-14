//
//  VerticalScrollerCell.swift
//  Demo0
//
//  Created by MieJie on 16/6/12.
//  Copyright © 2016年 MieJie. All rights reserved.
//

import UIKit

func RGB()->UIColor {
    return UIColor(red:CGFloat(random())/CGFloat(RAND_MAX), green: CGFloat(random()) / CGFloat(RAND_MAX), blue: CGFloat(random()) / CGFloat(RAND_MAX), alpha: 1.0)
}

let  SCREEN_WIDTH = UIScreen.mainScreen().bounds.width
let  CELL_HEIGHT:CGFloat =  100

class VerticalScrollerCell: UITableViewCell {
    
    var scrollView : UICollectionView!
    var didSelectedBlock:((Int)->())?
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.contentView.backgroundColor = UIColor.greenColor()
        
//        let simpleLayout = UICollectionViewFlowLayout()
//        simpleLayout.scrollDirection = .Horizontal
//        simpleLayout.minimumLineSpacing = 0
//        simpleLayout.itemSize = CGSizeMake(SCREEN_WIDTH/3, 100)
        
        let  layout = TopScrollCollectionLayout()
        scrollView = UICollectionView(frame: CGRectMake(0, 0, SCREEN_WIDTH, CELL_HEIGHT), collectionViewLayout: layout)
        scrollView.delegate = self
        scrollView.dataSource = self
        scrollView.showsHorizontalScrollIndicator = false 
        scrollView.registerClass(UICollectionViewCell.self, forCellWithReuseIdentifier: "\(UICollectionViewCell.self)")
        self.contentView.addSubview(scrollView)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}

extension VerticalScrollerCell : UICollectionViewDelegate {
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        didSelectedBlock?(indexPath.row)
    }
}

extension VerticalScrollerCell : UICollectionViewDataSource {

    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("\(UICollectionViewCell.self)", forIndexPath: indexPath)
        cell.contentView.backgroundColor =  RGB()
        return cell
    }
}
