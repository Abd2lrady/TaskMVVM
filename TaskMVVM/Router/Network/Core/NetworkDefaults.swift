//
//  NetworkDefaults.swift

import Foundation

struct NetworkDefaults {
    
    var baseUrl: String = "https://smea-pc.ibtikar.sa"
    
    static var `defaults` : NetworkDefaults {
        let instance = NetworkDefaults()
        return instance
    }
}
