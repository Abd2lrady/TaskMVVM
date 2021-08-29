//
//  Router+Routable.swift
//  TaskMVVM
//
//  Created by Ahmad Abdulrady

import UIKit

extension Router: RouterProtocol {
    func push(_ view: UIViewController, animated: Bool = true) {
        navController.pushViewController(view, animated: animated)
    }
    
    func pop(animated: Bool = true) {
        navController.popViewController(animated: animated)
    }
    
    func popTo(_ view: UIViewController, animated: Bool = true) {
        navController.popToViewController(view, animated: animated)
    }
    
    func popToRoot(animated: Bool = true) {
        navController.popToRootViewController(animated: animated)
    }
}
