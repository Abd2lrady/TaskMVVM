//
//  Routable.swift
//  TaskMVVM
//
//  Created by Ahmad Abdulrady 

import UIKit

protocol Routable {
    func push(_ view: UIViewController,
              animated: Bool)
    func pop(animated: Bool)
    func popTo(_ view: UIViewController,
               animated: Bool)
    func popToRoot(animated: Bool)
    func present(_ view: UIViewController,
                 animated: Bool)
}
