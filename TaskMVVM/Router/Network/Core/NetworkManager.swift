//
//  NetworkManager.swift

import Foundation
import Moya

/// Closure to be executed when a request has completed.
typealias StatusCode = Int
// typealias MoyaCompletion =
//    (Result<Moya.Response, MoyaError>)
// typealias NetworkComplation<T: Codable> =
//    (_ result: Swift.Result<APIResponse<T>, NetworkError>, _ statusCode: StatusCode?) -> Void
//
class NetworkManager {
    
    static let shared: NetworkManager = {
        NetworkManager(config: .defaults)}()
    
    var networkConfig: NetworkDefaults!
    
    let provider: MoyaProvider<MultiTarget>
    
    init(config: NetworkDefaults = NetworkDefaults.defaults) {
        self.networkConfig = config
        
        let headerPlugin = StaticHeaderPlugin(
            headers: [:])
        let loggerConfig = NetworkLoggerPlugin.Configuration(logOptions: .verbose)
        provider = MoyaProvider<MultiTarget>(plugins: [headerPlugin, NetworkLoggerPlugin(configuration: loggerConfig)])
    }
    
}
