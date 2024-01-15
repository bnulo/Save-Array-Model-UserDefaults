//
//  ContentView.swift
//  SaveModelWithUserDefaults
//
//  Created by bnulo on 1/14/24.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        TabView {
            ForEach(TabItem.allCases) { item in
                NavigationView {
                    TabItemView(item: item)
                }
                .tabItem {
                    Image(systemName: item.imageName)
                    Text(item.title)
                }
                .tag(item.id)
            }
        }
        .accentColor(Color.tabAccent)
    }
}
