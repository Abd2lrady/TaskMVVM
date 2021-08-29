//
//  CategoriesInteractor.swift
//  TaskMVVM
//
//  Created by Ahmad Abdulrady on 29/08/2021.
//

import Foundation

class CategoriesInteractor {
    var networkManager = NetworkManager()
    func getCategories(completion: @escaping ([Category]?, Error?) -> Void) {
        networkManager.getCategories { result, _ in
            switch result {
            case .success(let result):
                completion(result.data,
                           nil)
            case .failure(let error):
                completion(nil,
                           error)
            }
        }
    }
}
