//
//  Bool+Helper.swift
//  SaveModelWithUserDefaults
//
//  Created by bnulo on 1/15/24.
//

import Foundation

extension Bool {

    static var randomValue: Bool {
        [true, false].randomElement() ?? true
    }
}
