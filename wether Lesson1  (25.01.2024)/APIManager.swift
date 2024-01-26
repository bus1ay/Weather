//
//  APIManager.swift
//  wether Lesson1  (25.01.2024)
//
//  Created by Игорь Буслаев on 26.01.2024.
//

import Foundation

typealias JSONTask = URLSessionDataTask
typealias JSONComplitionHendler = ([String: AnyObject]?, HTTPURLResponse?, Error?) -> Void

enum APIResult<T> {
    case Success(T)
    case Failure(Error)
}

protocol APIManager {
    var sessionConfiguration: URLSessionConfiguration { get }
    var session: URLSession { get }
    
    func JSONTaskWith(request: URLRequest, complitionHandler: JSONComplitionHendler) -> JSONTask
    func fetch<T>(request: URLRequest, parse: ([String: AnyObject]) -> T?, completionHandler: (APIResult<T>) -> Void)
    
    init(sessionConfiguration: URLSessionConfiguration)
}
