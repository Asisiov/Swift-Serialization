//
//  SerializationService.swift
//
//  Created by Sisov Aleksandr on 12/18/18.
//

import Foundation

public class SerializationService {
    public init() {}
}

// MARK: - SerializationService
extension SerializationService: SerializationServiceProtocol {
    public func serialize(_ responseObject: Any?) -> [String : AnyObject]? {
        return responseObject as? [String : AnyObject]
    }
    
    public func serialize<T: Decodable>(_ value: T.Type, from: Any?) -> T? {
        guard
            let responseObject = from,
            let data = try? JSONSerialization.data(withJSONObject: responseObject, options: JSONSerialization.WritingOptions.prettyPrinted)
            else { return nil }
        
        return try? JSONDecoder().decode(value.self, from: data)
    }
}
