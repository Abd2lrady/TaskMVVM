//
//  CategoriesCoordinator+Coordinatable.swift
//  TaskMVVM
//
//  Created by Ahmad Abdulrady

import UIKit
extension CategoriesCoordinator: CoordinatorProtocol {
    
    func start() {
        let view = CategoriesVC()
        router.push(view, animated: true)
    }
}
