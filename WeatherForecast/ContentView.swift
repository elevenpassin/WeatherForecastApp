//
//  ContentView.swift
//  WeatherForecast
//
//  Created by Alice Kile on 06.12.24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            DayForecast(day: "Mon", isRainy: false, high: 10, low: 0)
            DayForecast(day: "Tue", isRainy: true, high: 15, low: 7)
        }
    }
}

#Preview {
    ContentView()
}

struct DayForecast: View {
    let day: String
    let isRainy: Bool
    let high: Int
    let low: Int
    
    var iconName: String {
        if isRainy {
            "cloud.rain.fill"
        } else {
            "sun.max.fill"
        }
    }
    
    var iconColor: Color {
        if isRainy {
            .blue
        } else {
            .yellow
        }
    }
    
    var body: some View {
        VStack {
            Text(day)
                .font(Font.headline)
            Image(systemName: iconName)
                .foregroundStyle(iconColor)
                .padding(5)
                .font(Font.largeTitle)
            Text("High: \(high)º C")
                .fontWeight(Font.Weight.semibold)
            Text("Low: \(low)º C")
                .fontWeight(Font.Weight.medium)
                .foregroundStyle(Color.secondary)
        }
        .padding()
    }
}
