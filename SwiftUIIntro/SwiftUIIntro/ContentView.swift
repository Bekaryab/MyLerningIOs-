//
//  ContentView.swift
//  SwiftUIIntro
//
//  Created by bekarys abiev on 08.11.2025.
//

import SwiftUI

struct ContentView: View {
    @State private var message = "Hello, world!"
    @State private var count: Int = 0
    @State private var changed = true
    var body: some View {
        VStack{
            HStack{
                DayForcast(day: "Mon", high: 60, low: 80)
                
                DayForcast(day: "Tue", high: 90, low: 10,)
                DayForcast(day: "Wed", high: 100, low: 20)
                DayForcast(day: "Thu", high: 20, low: 2)
                
            }
            HStack{
                DayForcast(day: "Fri", high: 30, low: 3)
                DayForcast(day: "Sat", high: 45, low: 4)
                DayForcast(day: "Sun", high: 50, low: 25)
            }
        }
        
    }
    
    struct DayForcast: View {
        let day: String
        let high: Int
        let low: Int
        //let isRayni: Bool
        var iconName: String {
            if high > 25{
                return "sun.max.fill"
            }
            else{
                return "cloud.fill"
            }
        }
        var body: some View {
            VStack{
                Text(day)
                    .font(Font.headline)
                Image(systemName: iconName)
                    .foregroundColor(.yellow)
                    .font(Font.largeTitle)
                Text("High: \(high)")
                    .fontWeight(Font.Weight.semibold)
                Text("Low: \(low)")
                    .fontWeight(Font.Weight.medium)
                    .foregroundStyle(Color.secondary)
            }
            .padding()
        }
    }
}
    
    #Preview {
        ContentView()
    }

