//
//  Config3.swift
//  SaveModelWithUserDefaults
//
//  Created by bnulo on 1/15/24.
//

import Foundation

class Config3: Identifiable, Codable, ObservableObject {

    @Published var id: String
    @Published var option: Option {
        didSet {
            onPropertyDidSet()
        }
    }
    @Published var isToggled: Bool {
        didSet {
            onPropertyDidSet()
        }
    }

    var onPropertyDidSet: () -> Void = {}

    // MARK: - Initialization

    init(id: String = UUID().uuidString,
         option: Option = .randomCase,
         isToggled: Bool = .randomValue) {

        self.id = id
        self.option = option
        self.isToggled = isToggled
    }

    // MARK: -

    enum CodingKeys: CodingKey {
        case id
        case option
        case isToggled
    }

    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        id = try container.decode(String.self, forKey: .id)
        option = try container.decode(Option.self,
                                      forKey: .option)
        isToggled = try container.decode(Bool.self, forKey: .isToggled)
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(option, forKey: .option)
        try container.encode(isToggled, forKey: .isToggled)
    }
}
