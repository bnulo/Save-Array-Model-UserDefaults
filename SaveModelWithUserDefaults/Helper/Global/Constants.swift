//
//  Constants.swift
//  SaveModelWithUserDefaults
//
//  Created by bnulo on 1/14/24.
//

import SwiftUI

enum Constants {

    enum ImageName {

        static let settings = "gearshape.fill"
        static let plus = "plus.circle.fill"
    }

    enum Title {

        static let sunrise = "Sunrise"
        static let sunset = "Sunset"
        static let option = "Option:"
        static let toggle = "Toggle:"
        static let addNewConfigButton = "Add New Config"
        static let animateButton = "Animate!"
    }

    enum ClipShape {
        static let buttonClipShape = RoundedRectangle(cornerRadius: 24,
                                                      style: .continuous)
    }
}
