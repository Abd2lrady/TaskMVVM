//
//  CategoriesCoordinator.swift
//  TaskMVVM
//
//  Created by Ahmad Abdulrady 

import Foundation
class CategoriesCoordinator {
    var childCoordinators = [Coordinatable]()

    let router: Routable

    init(with router: Routable) {
        self.router = router
    }
}
