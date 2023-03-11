//
//  ContentView.swift
//  FIFAWC2022
//
//  Created by Vishrut Jha on 3/10/23.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabView {
            GroupStageView(teamsList: teamsList)
                .tabItem {
                    Label("Group Stage", systemImage: "list.dash")
                }
            
            BracketView(rounds: rounds)
                .tabItem {
                    Label("Knockout Bracket", systemImage: "star.fill")
                }
            
            KeyStatsListView(allStats: allStats)
                .tabItem {
                    Label("Key Stats", systemImage: "chart.bar")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
