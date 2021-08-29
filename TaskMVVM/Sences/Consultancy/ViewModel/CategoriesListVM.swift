//
//  CategoriesListVM.swift
//  TaskMVVM
//
//  Created by Ahmad Abdulrady on 26/08/2021.
//

import Foundation

struct CategoriesListVM {
    var categories: [CategoryVM]
    
    var count: Int {
        return categories.count
    }
    
    func getCategoryVM(with index: Int) -> CategoryVM {
        return categories[index]
    }
}
