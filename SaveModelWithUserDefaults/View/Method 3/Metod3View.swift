//
//  Metod3View.swift
//  SaveModelWithUserDefaults
//
//  Created by bnulo on 1/14/24.
//

import SwiftUI

struct Metod3View: View {

    @ObservedObject var item: Item3 = Item3()

    var body: some View {

        VStack {
            ScrollView {
                VStack {
                    ForEach(item.configs) { config in
                        Config3View(item: item, config3: config)
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

    // MARK: - Helper

    private func addNewConfig() {
        item.addNew()
    }
}
