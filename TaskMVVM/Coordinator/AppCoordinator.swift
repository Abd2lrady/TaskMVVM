//
//  AppCoordinator.swift
//  TaskMVVM
//
//  Created by Ahmad Abdulrady 

import UIKit

class AppCoordinator: Coordinatable {
    let window: UIWindow
    var childCoordinators = [Coordinatable]()

    init(window: UIWindow) {
        self.window = window
    }

    func start() {
        let navController = UINavigationController()
        let router = Router(with: navController)
        let categoriesCoordinator = CategoriesCoordinator(with: router)
        childCoordinators.append(categoriesCoordinator)
        categoriesCoordinator.start()
        window.rootViewController = navController
        window.makeKeyAndVisible()
    }
    
}
