//
//  TabItemView.swift
//  SaveModelWithUserDefaults
//
//  Created by bnulo on 1/14/24.
//

import SwiftUI

struct TabItemView: View {

    let item: TabItem

    var body: some View {

        ZStack {
            item.color
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .ignoresSafeArea()
            switch item {
            case .method1:
                Metod1View()
            case .method2:
                Metod2View()
            case .method3:
                Metod3View(item: Item3())
            }
        }
    }
}
