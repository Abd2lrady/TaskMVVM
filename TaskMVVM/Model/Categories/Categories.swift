//
//  Categories.swift
//  TaskMVP
//
//  Created by Ahmad Abdulrady

import Foundation

struct Categories: Codable {
    var data: [Category]
}

extension Categories {
    func setCategory(with index: Int) -> Category {
        return data[index]
    }
}
