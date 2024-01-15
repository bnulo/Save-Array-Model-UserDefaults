//
//  Config1View.swift
//  SaveModelWithUserDefaults
//
//  Created by bnulo on 1/15/24.
//

import SwiftUI

struct Config1View: View {

    @ObservedObject var item: Item1
    @State var config1: Config1

    var body: some View {

        cardView
            .padding(.horizontal)
    }

    // MARK: - Child Views

    private var cardView: some View {
        CardView(backgroundColor: .appGray) {
            VStack {
                optionView
                    .padding(.bottom)
                toggleView
            }
        }
    }

    private var optionView: some View {
        Picker(Constants.Title.option, selection: $config1.option) {
            ForEach(Option.allCases, id: \.self) {
                Text($0.title)
            }
        }
        .pickerStyle(SegmentedPickerStyle())
        .onChange(of: config1.option) { _ in
            item.update(config1)
        }
    }

    private var toggleView: some View {
        Toggle(isOn: $config1.isToggled) {
            Text(Constants.Title.toggle)
                .fontWeight(.bold)
                .fontDesign(.rounded)
        }
        .tint(.tabAccent)
        .onChange(of: config1.isToggled) { _ in
            item.update(config1)
        }
    }
}
