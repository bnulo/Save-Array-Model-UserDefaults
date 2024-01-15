//
//  Array+RawRepresentable.swift
//  SaveModelWithUserDefaults
//
//  Created by bnulo on 1/15/24.
//

import Foundation

/// YOU NEED THIS EXTENSION OTHERWISE LINE BELOW:
/// @AppStorage(UserDefaults.Keys.item2.rawValue) var item: [Config2] = []
/// WILL CAUSE AN ERROR LIKE:
/// no exact matches in call to initializer
extension Array: RawRepresentable where Element: Codable {

    public init?(rawValue: String) {
        guard let data = rawValue.data(using: .utf8) else {
            return nil
        }
        do {
            let result = try JSONDecoder().decode([Element].self, from: data)
//            print("Init from result: \(result)")
            self = result
        } catch {
//            print("Error: \(error)")
            return nil
        }
    }

    public var rawValue: String {
        guard let data = try? JSONEncoder().encode(self),
              let result = String(data: data, encoding: .utf8)
        else {
            return "[]"
        }
//        print("Returning \(result)")
        return result
    }
}
