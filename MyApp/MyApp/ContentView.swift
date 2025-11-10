//
//  ContentView.swift
//  MyApp
//
//  Created by bekarys abiev on 09.11.2025.
//

import SwiftUI

let gradientColor: [Color] = [
    .gradientTop,
    .gradientBottom
    
]
struct ContentView: View {
    var body: some View {
        TabView{
            WellcomePage()
            FeaturesPage()
        }
        .background(Gradient(colors: gradientColor))
        .tabViewStyle(.page)
        .foregroundStyle(.white)
    }
}

#Preview {
    ContentView()
}
