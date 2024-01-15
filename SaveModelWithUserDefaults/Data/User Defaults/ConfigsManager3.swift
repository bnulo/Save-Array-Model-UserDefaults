//
//  ConfigsManager3.swift
//  SaveModelWithUserDefaults
//
//  Created by bnulo on 1/15/24.
//

import Foundation

final class ConfigsManager3: ConfigsManaging {

    func save(configs: [Config3]) {
        if let encoded = try? JSONEncoder().encode(configs) {
            UserDefaults.standard
                .set(encoded, forKey: UserDefaults.Keys.item3.rawValue)
        }
    }

    func getConfigs() -> [Config3] {
        if let data = UserDefaults.standard
            .data(forKey: UserDefaults.Keys.item3.rawValue) {
            if let decoded = try? JSONDecoder().decode([Config3].self,
                                                       from: data) {

                return decoded
            }
        }
        return []
    }
}

