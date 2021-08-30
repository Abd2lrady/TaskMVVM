//
//  CategoriesCoordinator+Coordinatable.swift
//  TaskMVVM
//
//  Created by Ahmad Abdulrady

import UIKit
extension ConsultancyCoordinator: CoordinatorProtocol {
    
    func start() {
        let view = ConsultancyVC()
        let interactor = CategoriesInteractor()
        view.consultancyVM = ConsultancyVM(with: interactor)
        router.push(view, animated: true)
    }
}
