//
//  Item1.swift
//  SaveModelWithUserDefaults
//
//  Created by bnulo on 1/15/24.
//

import Foundation

final class Item1: ObservableObject {

    @Published var configs: [Config1] = [] {
        didSet {
            save()
        }
    }

    // MARK: - Initialization

    init() {
        if let data = UserDefaults.standard
            .data(forKey: UserDefaults.Keys.item1.rawValue) {
            if let decoded = try? JSONDecoder().decode([Config1].self,
                                                       from: data) {
                configs = decoded
                return
            }
        }
        configs = []
    }

    // MARK: - Functions

    func addNew() {
        let new = Config1(
            id: UUID().uuidString,
            option: .allCases.randomElement() ?? .option1,
            isToggled: [true, false].randomElement() ?? true
        )
        configs.append(new)
    }

    func update(_ updatedConfig: Config1) {
        guard let index = configs.firstIndex(where: { element in
            element.id == updatedConfig.id
        }) else { return }
        configs[index] = updatedConfig
        save()
    }

    private func save() {
        if let encoded = try? JSONEncoder().encode(configs) {
            UserDefaults.standard
                .set(encoded, forKey: UserDefaults.Keys.item1.rawValue)
        }
    }
}
