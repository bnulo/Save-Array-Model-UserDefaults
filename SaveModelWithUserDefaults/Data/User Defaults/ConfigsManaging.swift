//
//  ConfigsManaging.swift
//  SaveModelWithUserDefaults
//
//  Created by bnulo on 1/15/24.
//

import Foundation

protocol ConfigsManaging {

    func save(configs: [Config3])
    func getConfigs() -> [Config3]
}
