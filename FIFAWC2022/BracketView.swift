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
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack {
                ForEach(rounds, id: \.name) { round in
                    RoundDetailView(round: round)
                }
            }
            .frame(height: 300)
            .padding()
        }
    }
}

struct RoundDetailView: View {
    let round: Round
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text(round.name)
                .font(.title)
                .padding(.bottom, 10)
            
            ForEach(round.matches, id: \.id) { match in
                HStack {
                    TeamProgressView(team: match.team1, isWinner: match.winner == match.team1)
                    Text("vs")
                    TeamProgressView(team: match.team2, isWinner: match.winner == match.team2)
                }
            }
        }
        .padding()
        .background(RoundedRectangle(cornerRadius: 10).fill(Color.gray.opacity(0.2)))
        .frame(width: UIScreen.main.bounds.width - 40) // Set the width based on screen size minus some padding
    }
}

struct TeamProgressView: View {
    var team: Team
    var isWinner: Bool
    
    var body: some View {
        Text(team.flag + " " + team.name)
            .foregroundColor(isWinner ? .blue : .primary)
            .fontWeight(isWinner ? .bold : .regular)
            .padding(isWinner ? 5 : 0)
            .background(isWinner ? Color.blue.opacity(0.1) : Color.clear)
            .cornerRadius(5)
    }
}

struct BracketView_Previews: PreviewProvider {
    static var previews: some View {
            // Provide a NavigationView to support navigation links in the preview.
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
