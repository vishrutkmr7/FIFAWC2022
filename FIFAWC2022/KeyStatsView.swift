//
//  KeyStatsView.swift
//  FIFAWC2022
//
//  Created by Vishrut Jha on 4/28/24.
//

import SwiftUI

struct KeyStatsView: View {
    var statsCategory: StatCategory
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(statsCategory.title)
                .font(.headline)
                .padding()
            
            ForEach(statsCategory.stats) { stat in
                HStack {
                    Text(flag(country: stat.country))
                        .font(.largeTitle)
                        .frame(width: 30, height: 20)
                    
                    Text(stat.name)
                        .font(.body)
                    
                    Spacer()
                    
                    Text(formatStatValue(stat.value))
                        .font(.subheadline)
                }
                .padding([.leading, .trailing, .bottom], 5)
            }
        }
    }
}

struct KeyStatsListView: View {
    let allStats: [StatsGroup]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(allStats, id: \.category) { statsGroup in
                    Section(header: Text(statsGroup.category)) {
                        ForEach(statsGroup.categories, id: \.title) { category in
                            KeyStatsView(statsCategory: category)
                        }
                    }
                }
            }
            .navigationTitle("Key Statistics")
        }
    }
}

func formatStatValue(_ value: Double) -> String {
    if floor(value) == value {
        return "\(Int(value))"
    } else {
        return String(format: "%.2f", value)
    }
}

struct KeyStatsListView_Previews: PreviewProvider {
    static var previews: some View {
        KeyStatsListView(allStats: [topStatsData, attackStats, defenseStats, goalkeepingStats, disciplinaryStats])
    }
}
