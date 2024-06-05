//
//  AboutScreen.swift
//  iosApp
//
//  Created by Matteo Buompastore on 04/06/24.
//  Copyright © 2024 orgName. All rights reserved.
//

import SwiftUI

struct AboutScreen: View {
    var body: some View {
        NavigationStack {
            AboutListView()
                .navigationTitle("About Device")
        }
    }
}

#Preview {
    AboutScreen()
}
