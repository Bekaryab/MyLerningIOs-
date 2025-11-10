//
//  WellcomePage.swift
//  MyApp
//
//  Created by bekarys abiev on 10.11.2025.
//

import SwiftUI

struct WellcomePage: View {
    var body: some View {
        VStack {
            ZStack{
                RoundedRectangle(cornerRadius: 30)
                    .frame(width: 150, height: 150)
                    .foregroundStyle(.tint)
                Image(systemName: "figure.walk")
                    .font(.system(size: 70))
                    .foregroundStyle(.white)
            }
            
            Text("My First App")
                .font(.title)
                .fontWeight(.semibold)
                .padding(.top)
                //.border(.black, width: 1.5)
            
            Text("Description text here")
                .font(.title3)
                //.border(.black, width: 1.5)
        }
        //.border(.orange, width: 1.5)
        .padding()
        //.border(.purple, width: 1.5)
    }
}

#Preview {
    WellcomePage()
}
