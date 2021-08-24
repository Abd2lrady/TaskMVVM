//
//  Coordinatable.swift
//  TaskMVVM
//
//  Created by Ahmad Abdulrady 

import Foundation
protocol Coordinatable {
    var childCoordinators: Coordinatable { get set }
    func start()
}
