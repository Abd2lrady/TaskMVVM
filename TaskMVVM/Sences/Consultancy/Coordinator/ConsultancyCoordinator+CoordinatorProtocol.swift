//
//  CategoriesCoordinator+Coordinatable.swift
//  TaskMVVM
//
//  Created by Ahmad Abdulrady

import UIKit
extension ConsultancyCoordinator: CoordinatorProtocol {
    
    func start() {
        let view = ConsultancyVC()
        router.push(view, animated: true)
    }
}
