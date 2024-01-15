//
//  Config3View.swift
//  SaveModelWithUserDefaults
//
//  Created by bnulo on 1/15/24.
//

import SwiftUI

struct Config3View: View {

    @ObservedObject var item: Item3
    @ObservedObject var config3: Config3

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
        Picker(Constants.Title.option, selection: $config3.option) {
            ForEach(Option.allCases, id: \.self) {
                Text($0.title)
            }
        }
        .pickerStyle(SegmentedPickerStyle())
    }

    private var toggleView: some View {
        Toggle(isOn: $config3.isToggled) {
            Text(Constants.Title.toggle)
                .fontWeight(.bold)
                .fontDesign(.rounded)
        }
        .tint(.tabAccent)
    }
}
