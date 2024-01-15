//
//  Option.swift
//  SaveModelWithUserDefaults
//
//  Created by bnulo on 1/15/24.
//

import Foundation

enum Option: Int, Identifiable, CaseIterable, Codable {

    case option1 = 1, option2 = 2, option3 = 3

    var id: Int { return self.rawValue }

    var title: String {
        switch self {
        case .option1:
            return "Option 1"
        case .option2:
            return "Option 2"
        case .option3:
            return "Option 3"
        }
    }

    static var randomCase: Option {
        Option.allCases.randomElement() ?? .option1
    }
}
