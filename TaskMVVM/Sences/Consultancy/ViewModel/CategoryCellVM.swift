//
//  CategoryVM.swift
//  TaskMVVM
//
//  Created by Ahmad Abdulrady

import Foundation

struct CategoryCellVM {
    private var category: Category
    
    init(with category: Category) {
        self.category = category
    }
    
    var title: String {
        return category.title
    }
}
