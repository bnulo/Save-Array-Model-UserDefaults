//
//  Method2View.swift
//  SaveModelWithUserDefaults
//
//  Created by bnulo on 1/15/24.
//

import SwiftUI

struct Metod2View: View {

    @AppStorage(UserDefaults.Keys.item2.rawValue)
    var item: [Config2] = []

    var body: some View {
        VStack {
            ScrollView {
                VStack {
                    ForEach($item) { config in
                        Config2View(config: config)
                    }
                }
            }
            addConfigButton
        }
    }

    // MARK: - Child View

    private var addConfigButton: some View {
        Button {
            withAnimation {
                addNewConfig()
            }
        } label: {
            HStack {
                Image(systemName: Constants.ImageName.plus)
                Text(Constants.Title.addNewConfigButton)
            }

        }
        .buttonStyle(RoundedShadowedButton(foregroundColor: .buttonForeground))
        .padding()
    }

    // MARK: - Helper Function

    private func addNewConfig() {

        let new = Config2(
            id: UUID().uuidString,
            option: .allCases.randomElement() ?? .option1,
            isToggled: [true, false].randomElement() ?? true
        )
        item.append(new)
    }
}
