//
//  Config1.swift
//  SaveModelWithUserDefaults
//
//  Created by bnulo on 1/15/24.
//

import Foundation

struct Config1: Identifiable, Codable {

    var id: String = UUID().uuidString
    var option: Option = .option1
    var isToggled: Bool = true
}
