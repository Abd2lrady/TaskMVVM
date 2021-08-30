//
//  CategoriesCell.swift
//  TaskMVP
//
//  Created by Ahmad Abdulrady

import UIKit

class CategoryCell: UICollectionViewCell {

    @IBOutlet  private weak var imgView: UIImageView!
    @IBOutlet  private weak var _nameLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        layer.cornerRadius = 12
    }
    
    var nameLabel: String? {
        get {
            return _nameLabel.text
        } set {
            _nameLabel.text = newValue
        }
    }
}
