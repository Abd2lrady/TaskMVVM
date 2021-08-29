//
//  CategoriesCoordinator.swift
//  TaskMVVM
//
//  Created by Ahmad Abdulrady 

import Foundation
class CategoriesCoordinator {
    var childCoordinators = [CoordinatorProtocol]()

    let router: RouterProtocol

    init(with router: RouterProtocol) {
        self.router = router
    }
}
