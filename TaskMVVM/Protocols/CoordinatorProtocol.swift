//
//  Coordinatable.swift
//  TaskMVVM
//
//  Created by Ahmad Abdulrady 

import Foundation
protocol CoordinatorProtocol: AnyObject {
    var childCoordinators: [CoordinatorProtocol] { get set }
    func start()
}
