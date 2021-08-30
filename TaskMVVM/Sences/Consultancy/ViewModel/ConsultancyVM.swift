//
//  CategoriesListVM.swift
//  TaskMVVM
//
//  Created by Ahmad Abdulrady 

import Foundation

class ConsultancyVM {
    
    let interactor: CategoriesInteractor
    
    // MARK: - DataModel
    private var categories = [Category]()
    // MARK: - View Interfaces
    private var categoriesListVM = [CategoryCellVM]() {
        didSet {
            self.categoriesCellsLoaded?()
        }
    }
    var categoriesCellsLoaded: (() -> Void)?
    
    init(with interactor: CategoriesInteractor) {
        self.interactor = interactor
        fetchCategories()
    }
    
    var categoriesCount: Int {
        return categoriesListVM.count
    }
    
    func fetchCategories() {
        interactor.getCategories {categories, _ in
            if let categories = categories {
                self.categories = categories
            }
            self.createCategoryListCellVM(from: self.categories)
        }
    }
    
    func createCategoryListCellVM(from categories: [Category]) {
        categories.map { category in
            let categoryCellVM = CategoryCellVM(with: category)
            categoriesListVM.append(categoryCellVM)
        }
    }
    
    func getCategoryCellVM(at index: Int) -> CategoryCellVM {
        return CategoryCellVM(with: categories[index])
    }
    
}
