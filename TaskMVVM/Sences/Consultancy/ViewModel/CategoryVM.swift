//
//  CategoryVM.swift
//  TaskMVVM
//
//  Created by Ahmad Abdulrady

import UIKit

struct CategoryVM {
    var category: Category
    
    init(with category: Category) {
        self.category = category
    }
    
    var title: String {
        return category.title
    }
}
