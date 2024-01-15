//
//  TabItem.swift
//  SaveModelWithUserDefaults
//
//  Created by bnulo on 1/14/24.
//

import SwiftUI

enum TabItem: Int, Identifiable, CaseIterable {

    case method1 = 1, method2 = 2, method3 = 3

    var id: Int { return self.rawValue }

    var title: String {
        "Method \(self.rawValue)"
    }

    var imageName: String {
        Constants.ImageName.settings
    }

    var color: Color {
        switch self {
        case .method1:
            return Color.method1Background
        case .method2:
            return Color.method2Background
        case .method3:
            return Color.method3Background
        }
    }
}

