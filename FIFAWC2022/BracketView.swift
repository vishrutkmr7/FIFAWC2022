//
//  BracketView.swift
//  FIFAWC2022
//
//  Created by Vishrut Jha on 4/27/24.
//

import SwiftUI

struct BracketView: View {
    var rounds: [Round]
    
    var body: some View {
        NavigationView {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20) {
                    ForEach(rounds.indices, id: \.self) { index in
                        VStack {
                            Text(rounds[index].name)
                                .font(.title2)
                                .fontWeight(.bold)
                                .padding(.bottom, 5)
                            
                            ForEach(rounds[index].matches, id: \.id) { match in
                                MatchView(match: match)
                            }
                        }
                    }
                    ChampionView(team: argentina)
                }
                .padding(.horizontal)
            }
            .navigationTitle("Knockout Rounds")
        }
    }
}

struct MatchView: View {
    var match: Match
    @State private var isCollapsed = true
    
    var body: some View {
        VStack {
            HStack {
                NavigationLink(destination: TeamView(selectedTeam: match.team1)) {
                    TeamProgressView(team: match.team1, isWinner: match.winner == match.team1)
                }
                Spacer()
                
                Text("vs")
                    .foregroundColor(.secondary)
                    .onTapGesture {
                        withAnimation {
                            isCollapsed.toggle()
                        }
                    }
                Spacer()
                NavigationLink(destination: TeamView(selectedTeam: match.team2)) {
                    TeamProgressView(team: match.team2, isWinner: match.winner == match.team2)
                }
            }
            if !isCollapsed, let winner = match.winner {
                TeamProgressView(team: winner, isWinner: true)
                    .padding(.top, 10)
            }
        }
    }
}


struct TeamProgressView: View {
    var team: Team
    var isWinner: Bool
    
    var body: some View {
        HStack {
            Text(team.flag)
            Text(team.name)
                .lineLimit(1)
                .truncationMode(.tail)
                .foregroundColor(isWinner ? .white : .primary)
                .fontWeight(isWinner ? .bold : .regular)
        }
        .padding(.vertical, 5)
        .padding(.horizontal, 10)
        .background(isWinner ? Color.blue : Color.secondary.opacity(0.1))
        .cornerRadius(10)
    }
}

struct ChampionView: View {
    var team: Team
    
    var body: some View {
        VStack {
            Text("Champion")
                .font(.headline)
                .padding()
            TeamProgressView(team: team, isWinner: true)
        }
        .padding()
        .background(Color.blue)
        .shadow(color: .yellow , radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
        .cornerRadius(12)
    }
}

struct BracketView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            BracketView(rounds: sampleRounds)
        }
    }
    
    static var sampleRounds: [Round] {
        let sampleTeams = [
            Team(name: "Argentina", description: "...", group: "A", flag: "🇦🇷", video: "..."),
            Team(name: "France", description: "...", group: "A", flag: "🇫🇷", video: "..."),
            Team(name: "Brazil", description: "...", group: "B", flag: "🇧🇷", video: "..."),
            Team(name: "Germany", description: "...", group: "B", flag: "🇩🇪", video: "...")
        ]
        
        let roundOf16 = Round(
            name: "Round of 16",
            matches: [
                Match(team1: sampleTeams[0], team2: sampleTeams[1], winner: sampleTeams[0]),
                Match(team1: sampleTeams[2], team2: sampleTeams[3], winner: sampleTeams[2])
            ]
        )
        
        let quarterfinals = Round(
            name: "Quarterfinals",
            matches: [
                Match(team1: sampleTeams[0], team2: sampleTeams[2], winner: sampleTeams[0])
            ]
        )
        
        return [roundOf16, quarterfinals]
    }
}
