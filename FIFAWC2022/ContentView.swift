//
//  ContentView.swift
//  FIFAWC2022
//
//  Created by Vishrut Jha on 3/10/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var searchText: String = ""
    
    var searchResults: [Team] {
        if searchText.isEmpty {
            return teamsList
        } else {
            return teamsList.filter{ team in
                team.name.contains(searchText)
            }
        }
    }
    
    var body: some View {
        NavigationView {
            List{
                ForEach(searchResults){ team in
                    NavigationLink(destination: TeamView(selectedTeam: team)){
                        Text(team.flag + " " + team.name)
                    }
                }
            }
            .searchable(text: $searchText)
            .navigationTitle("World Cup Teams")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
