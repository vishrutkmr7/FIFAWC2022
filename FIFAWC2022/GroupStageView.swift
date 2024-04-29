//
//  GroupStageView.swift
//  FIFAWC2022
//
//  Created by Vishrut Jha on 4/27/24.
//

import SwiftUI

struct GroupStageView: View {
    
    @State private var searchText: String = ""
    
    var teamsList: [Team]
    
    var groupedTeams: [String: [Team]] {
        let filteredTeams = searchText.isEmpty ? teamsList : teamsList.filter { team in
            team.name.localizedCaseInsensitiveContains(searchText)
        }
        
        return Dictionary(grouping: filteredTeams, by: { $0.group })
    }
    
    var body: some View {
        NavigationView {
            List(groupedTeams.keys.sorted(), id: \.self) { group in
                Section(header: Text("Group \(group)")) {
                    ForEach(Array(groupedTeams[group]?.enumerated() ?? [].enumerated()), id: \.element.id) { index, team in
                        NavigationLink(destination: TeamView(selectedTeam: team)) {
                            let prefix = searchText.isEmpty && index < 2 ? "✅ " : ""
                            Text("\(prefix)\(team.flag) \(team.name)")
                        }
                    }
                }
            }
            .searchable(text: $searchText)
            .navigationTitle("Group Stage")
        }
    }
}

struct GroupStageView_Previews: PreviewProvider {
    static var previews: some View {
        GroupStageView(teamsList: [Team(name: "Brazil", description: "Description here", group: "D", flag: "🇧🇷", video: "video-url")])
    }
}
