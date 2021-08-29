//
//  CategoriesCell.swift
//  TaskMVP
//
//  Created by Ahmad Abdulrady

import UIKit

class CategoryCell: UICollectionViewCell {

    @IBOutlet  private weak var imgView: UIImageView!
    @IBOutlet  private weak var nameLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        layer.cornerRadius = 12
    }
    
}

