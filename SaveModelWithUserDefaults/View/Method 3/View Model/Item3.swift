//
//  Item3.swift
//  SaveModelWithUserDefaults
//
//  Created by bnulo on 1/15/24.
//

import Foundation

final class Item3: ObservableObject {

    @Published var configs: [Config3] = [] {
        didSet {
            save()
            setOnPropertyDidSetForEveryConfig()
        }
    }

    let configsManager: ConfigsManaging

    init(configsManager: ConfigsManaging=ConfigsManager3()) {

//        if let data = UserDefaults.standard
//            .data(forKey: UserDefaults.Keys.item3.rawValue) {
//            if let decoded = try? JSONDecoder().decode([Config3].self,
//                                                       from: data) {
//                configs = decoded
//                return
//            }
//        }
//        configs = []
        self.configsManager = configsManager
        self.configs = configsManager.getConfigs()
    }

    // MARK: -

    func addNew() {
        let new = Config3()
        configs.append(new)
    }

    private func save() {
//        if let encoded = try? JSONEncoder().encode(configs) {
//            UserDefaults.standard
//                .set(encoded, forKey: UserDefaults.Keys.item3.rawValue)
//        }
        configsManager.save(configs: configs)
    }

    private func setOnPropertyDidSetForEveryConfig() {

        configs.forEach { config in
            config.onPropertyDidSet = { [weak self] in
                self?.save()
            }
        }
    }
}
