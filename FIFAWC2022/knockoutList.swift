//
//  knockoutList.swift
//  FIFAWC2022
//
//  Created by Vishrut Jha on 4/27/24.
//

import Foundation

struct Match {
    let id = UUID()
    let team1: Team
    let team2: Team
    let winner: Team?
}

struct Round {
    let name: String
    var matches: [Match]
}

let netherlands = teamsList.first(where: { $0.name == "Netherlands" })!
let usa = teamsList.first(where: { $0.name == "USA" })!
let argentina = teamsList.first(where: { $0.name == "Argentina" })!
let australia = teamsList.first(where: { $0.name == "Australia" })!
let france = teamsList.first(where: { $0.name == "France" })!
let poland = teamsList.first(where: { $0.name == "Poland" })!
let england = teamsList.first(where: { $0.name == "England" })!
let senegal = teamsList.first(where: { $0.name == "Senegal" })!
let japan = teamsList.first(where: { $0.name == "Japan" })!
let croatia = teamsList.first(where: { $0.name == "Croatia" })!
let brazil = teamsList.first(where: { $0.name == "Brazil" })!
let southKorea = teamsList.first(where: { $0.name == "South Korea" })!
let morocco = teamsList.first(where: { $0.name == "Morocco" })!
let spain = teamsList.first(where: { $0.name == "Spain" })!
let portugal = teamsList.first(where: { $0.name == "Portugal" })!
let switzerland = teamsList.first(where: { $0.name == "Switzerland" })!

    // Populate the rounds
let rounds = [
    Round(
        name: "Round of 16",
        matches: [
            Match(team1: netherlands, team2: usa, winner: netherlands),
            Match(team1: argentina, team2: australia, winner: argentina),
            Match(team1: france, team2: poland, winner: france),
            Match(team1: england, team2: senegal, winner: england),
            Match(team1: japan, team2: croatia, winner: croatia),
            Match(team1: brazil, team2: southKorea, winner: brazil),
            Match(team1: morocco, team2: spain, winner: morocco),
            Match(team1: portugal, team2: switzerland, winner: portugal)
        ]
    ),
    Round(
        name: "Quarterfinals",
        matches: [
            Match(team1: netherlands, team2: argentina, winner: argentina),
            Match(team1: croatia, team2: brazil, winner: croatia),
            Match(team1: england, team2: france, winner: france),
            Match(team1: morocco, team2: portugal, winner: morocco),
        ]
    ),
    Round(
        name: "Semifinals",
        matches: [
            Match(team1: argentina, team2: croatia, winner: argentina),
            Match(team1: france, team2: morocco, winner: france)
        ]
    ),
    Round(
        name: "Final, 3rd Place",
        matches: [
            Match(team1: argentina, team2: france, winner: argentina),
            Match(team1: croatia, team2: morocco, winner: croatia)
        ]
    )
]

