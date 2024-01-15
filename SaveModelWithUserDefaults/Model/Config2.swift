//
//  Config2.swift
//  SaveModelWithUserDefaults
//
//  Created by bnulo on 1/15/24.
//

import Foundation

struct Config2: Codable, Identifiable {

    let id: String
    var option: Option
    var isToggled: Bool

    init(id: String, option: Option, isToggled: Bool) {
        self.id = id
        self.option = option
        self.isToggled = isToggled
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.option = try container.decode(Option.self, forKey: .option)
        self.isToggled = try container.decode(Bool.self, forKey: .isToggled)
    }

    enum CardKeys: CodingKey {
        case id
        case option
        case isolated
    }
}
