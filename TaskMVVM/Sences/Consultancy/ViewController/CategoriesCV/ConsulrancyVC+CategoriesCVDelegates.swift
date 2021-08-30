//
//  ConsulrancyVC+CategoriesCVDelegates.swift
//  TaskMVVM
//
//  Created by Ahmad Abdulrady on 29/08/2021.
//

import UIKit

extension ConsultancyVC: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView,
                        numberOfItemsInSection section: Int) -> Int {
        return consultancyVM?.categoriesCount ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = categoriesCV.dequeueReusableCell(withReuseIdentifier: "CategoryCell",
                                                          for: indexPath) as? CategoryCell else {
            return UICollectionViewCell() }
        let cellVM = consultancyVM?.getCategoryCellVM(at: indexPath.row)
        cell.nameLabel = cellVM?.title ?? ""
        return cell
    }
    
    func categoriesCVSetup() {
        let cellNib = UINib(nibName: "CategoryCell",
                            bundle: .main)
        categoriesCV.register(cellNib,
                              forCellWithReuseIdentifier: "CategoryCell")
        categoriesCV.dataSource = self
        categoriesCV.backgroundColor = .clear
        
    }
}
