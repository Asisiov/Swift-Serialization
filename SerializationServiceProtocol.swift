//
//  SerializationServiceProtocol.swift
//
//  Created by Sisov Aleksandr on 12/18/18.
//

import Foundation

public protocol SerializationServiceProtocol {
    func serialize(_ responseObject: Any?) -> [String : AnyObject]?
    func serialize<T: Decodable>(_ value: T.Type, from: Any?) -> T?
}
