//
//  Metod1View.swift
//  SaveModelWithUserDefaults
//
//  Created by bnulo on 1/14/24.
//

import SwiftUI

struct Metod1View: View {

    @ObservedObject var item: Item1 = Item1()

    var body: some View {

        VStack {
            ScrollView {
                VStack {
                    ForEach(item.configs) { config in
                        Config1View(item: item, config1: config)
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
