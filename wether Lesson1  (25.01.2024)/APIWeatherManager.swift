//
//  APIWeatherManager.swift
//  wether Lesson1  (25.01.2024)
//
//  Created by Игорь Буслаев on 29.01.2024.
//

import Foundation

final class APIWeatherManager {
    let sessionConfiguration: URLSessionConfiguration
    lazy var session: URLSession = {
        return URLSession(configuration: self.sessionConfiguration)
    }()
    
    let apiKey: String
    init(sessionConfiguration: URLSessionConfiguration, apiKey: String) {
        self.sessionConfiguration = sessionConfiguration
        self.apiKey = apiKey
    }
    
    convenience init(apiKey: String) {
        self.init(sessionConfiguration: URLSessionConfiguration.default, apiKey: apiKey)
    }
    
}
