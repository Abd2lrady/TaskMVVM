//
//  AppCoordinator+Coordinatable.swift
//  TaskMVVM
//
//  Created by Ahmad Abdulrady on 28/08/2021.
//

import UIKit

extension AppCoordinator: CoordinatorProtocol {
    func start() {
        let navController = UINavigationController()
        let router = Router(with: navController)
        let categoriesCoordinator = ConsultancyCoordinator(with: router)
        childCoordinators.append(categoriesCoordinator)
        categoriesCoordinator.start()
        window.rootViewController = navController
        window.makeKeyAndVisible()
    }
}
