//
//  DashboardLayout.swift
//  
//
//  Created by Andriy K. on 8/19/15.
//
//

import UIKit

class DashboardLayout: UICollectionViewFlowLayout {
  
  let defaultCellInset: CGFloat = 7
  let rowsSpacing: CGFloat = 1
  let aspectRatio:CGFloat = 320/50
  
  
  override func collectionViewContentSize() -> CGSize {
    let contentSize = CGSize(width: collectionView!.bounds.width, height: collectionView!.bounds.height - collectionView!.contentInset.top)
    
    sectionInset = UIEdgeInsets(top: 0, left: defaultCellInset, bottom: defaultCellInset, right: defaultCellInset)
    minimumInteritemSpacing = defaultCellInset
    minimumLineSpacing = rowsSpacing
    
    let width = contentSize.width - (sectionInset.left + sectionInset.right)
    let height = width / aspectRatio
    
    itemSize = CGSize(width: width, height: height)
    headerReferenceSize = CGSize(width: width, height: height * 0.5)
    
    return contentSize
  }
  
}
