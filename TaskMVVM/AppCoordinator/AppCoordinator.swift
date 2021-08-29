//
//  AppCoordinator.swift
//  TaskMVVM
//
//  Created by Ahmad Abdulrady 

import UIKit

class AppCoordinator {
    let window: UIWindow
    var childCoordinators = [CoordinatorProtocol]()

    init(window: UIWindow) {
        self.window = window
    }
}
