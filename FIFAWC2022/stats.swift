//
//  stats.swift
//  FIFAWC2022
//
//  Created by Vishrut Jha on 4/28/24.
//

import Foundation

struct PlayerStat: Identifiable {
    let id = UUID()
    let name: String
    let country: String
    let value: Double
}

struct StatCategory {
    let title: String
    let stats: [PlayerStat]
}

struct StatsGroup {
    let category: String
    let categories: [StatCategory]
}

let topStatsData = StatsGroup(category: "Top Stats", categories: [
    StatCategory(
        title: "Top Scorer",
        stats: [
            PlayerStat(name: "Kylian Mbappé", country: "FR", value: 8),
            PlayerStat(name: "Lionel Messi", country: "AR", value: 7),
            PlayerStat(name: "Julián Álvarez", country: "AR", value: 4)
        ]
    ),
    StatCategory(
        title: "Assists",
        stats: [
            PlayerStat(name: "Antoine Griezmann", country: "FR", value: 3),
            PlayerStat(name: "Lionel Messi", country: "AR", value: 3),
            PlayerStat(name: "Bruno Fernandes", country: "PT", value: 3)
        ]
    ),
    StatCategory(
        title: "Goals + Assists",
        stats: [
            PlayerStat(name: "Lionel Messi", country: "AR", value: 10),
            PlayerStat(name: "Kylian Mbappé", country: "FR", value: 10),
            PlayerStat(name: "Harry Kane", country: "GB", value: 5)
        ]
    ),
])

let attackStats = StatsGroup(category: "Attack", categories: [
    StatCategory(
        title: "Goals per 90",
        stats: [
            PlayerStat(name: "Marcus Rashford", country: "GB", value: 1.97),
            PlayerStat(name: "Goncalo Ramos", country: "PT", value: 1.76),
            PlayerStat(name: "Álvaro Morata", country: "ES", value: 1.48)
        ]
    ),
    StatCategory(
        title: "Shots on target per 90",
        stats: [
            PlayerStat(name: "Marcus Rashford", country: "GB", value: 3.9),
            PlayerStat(name: "Goncalo Ramos", country: "PT", value: 2.9),
            PlayerStat(name: "Álvaro Morata", country: "ES", value: 2.5)
        ]
    ),
    StatCategory(
        title: "Chances created",
        stats: [
            PlayerStat(name: "Antoine Griezmann", country: "FR", value: 22),
            PlayerStat(name: "Lionel Messi", country: "AR", value: 21),
            PlayerStat(name: "Ousmane Dembélé", country: "FR", value: 11)
        ]
    ),
    StatCategory(
        title: "Shots per 90",
        stats: [
            PlayerStat(name: "Marcus Rashford", country: "GB", value: 7.2),
            PlayerStat(name: "Lautaro Martinez", country: "AR", value: 5.3),
            PlayerStat(name: "Mislav Orsic", country: "HR", value: 5.1)
        ]
    ),
    StatCategory(
        title: "Accurate passes per 90",
        stats: [
            PlayerStat(name: "Rodri", country: "ES", value: 147.2),
            PlayerStat(name: "Aymeric Laporte", country: "ES", value: 123.0),
            PlayerStat(name: "Jordi Alba", country: "ES", value: 99.1)
        ]
    ),
    StatCategory(
        title: "Big chances created",
        stats: [
            PlayerStat(name: "Antoine Griezmann", country: "FR", value: 7),
            PlayerStat(name: "Lionel Messi", country: "AR", value: 7),
            PlayerStat(name: "Bruno Fernandes", country: "PT", value: 5)
        ]
    ),
    StatCategory(
        title: "Successful dribbles per 90",
        stats: [
            PlayerStat(name: "Jamal Musiala", country: "DE", value: 6.6),
            PlayerStat(name: "Iliman Ndiaye", country: "SN", value: 4.0),
            PlayerStat(name: "Ángel Di María", country: "AR", value: 4.0)
        ]
    ),
    StatCategory(
        title: "Accurate long balls per 90",
        stats: [
            PlayerStat(name: "Pierre-Emile Hojbjerg", country: "DK", value: 7.7),
            PlayerStat(name: "Ben Davies", country: "WAL", value: 7.5),
            PlayerStat(name: "Joachim Andersen", country: "DK", value: 7.3)
        ]
    ),
    StatCategory(
        title: "xG + xA per 90",
        stats: [
            PlayerStat(name: "Lionel Messi", country: "AR", value: 1.11),
            PlayerStat(name: "Marcus Rashford", country: "GB", value: 1.08),
            PlayerStat(name: "Andreas Cornelius", country: "DK", value: 1.06)
        ]
    ),
    StatCategory(
        title: "Successful dribbles per 90",
        stats: [
            PlayerStat(name: "Jamal Musiala", country: "DE", value: 6.6),
            PlayerStat(name: "Iliman Ndiaye", country: "SN", value: 4.0),
            PlayerStat(name: "Ángel Di María", country: "AR", value: 4.0)
        ]
    ),
    StatCategory(
        title: "Big chances missed",
        stats: [
            PlayerStat(name: "Kylian Mbappé", country: "FR", value: 5),
            PlayerStat(name: "Lautaro Martinez", country: "AR", value: 3),
            PlayerStat(name: "Romelu Lukaku", country: "BE", value: 3)
        ]
    ),
    StatCategory(
        title: "Penalties awarded",
        stats: [
            PlayerStat(name: "Ismaila Sarr", country: "SN", value: 1),
            PlayerStat(name: "Mason Mount", country: "GB", value: 1),
            PlayerStat(name: "Lionel Messi", country: "AR", value: 1)
        ]
    ),
])

let defenseStats = StatsGroup(category: "Defense", categories: [
    StatCategory(
        title: "Successful tackles per 90",
        stats: [
            PlayerStat(name: "Álex Balde", country: "ES", value: 4.4),
            PlayerStat(name: "Rodrigo Bentancur", country: "UY", value: 3.4),
            PlayerStat(name: "Jude Bellingham", country: "GB", value: 3.3)
        ]
    ),
    StatCategory(
        title: "Interceptions per 90",
        stats: [
            PlayerStat(name: "Rodrigo Bentancur", country: "UY", value: 2.9),
            PlayerStat(name: "Axel Disasi", country: "FR", value: 2.9),
            PlayerStat(name: "Ali Karimi", country: "IR", value: 2.8)
        ]
    ),
    StatCategory(
        title: "Clearances per 90",
        stats: [
            PlayerStat(name: "Kalidou Koulibaly", country: "SN", value: 7.5),
            PlayerStat(name: "Yassine Meriah", country: "TN", value: 6.7),
            PlayerStat(name: "Toby Alderweireld", country: "BE", value: 6.3)
        ]
    ),
    StatCategory(
        title: "Blocks per 90",
        stats: [
            PlayerStat(name: "Achraf Dari", country: "MA", value: 1.9),
            PlayerStat(name: "Kye Rowles", country: "AU", value: 1.8),
            PlayerStat(name: "Jawad El Yamiq", country: "MA", value: 1.8)
        ]
    ),
    StatCategory(
        title: "Penalties conceded",
        stats: [
            PlayerStat(name: "Saad Al Sheeb", country: "QA", value: 1),
            PlayerStat(name: "Yannick Carrasco", country: "BE", value: 1),
            PlayerStat(name: "Héctor Moreno", country: "MX", value: 1)
        ]
    ),
    StatCategory(
        title: "Possession won final 3rd per 90",
        stats: [
            PlayerStat(name: "Ritsu Doan", country: "JP", value: 2.5),
            PlayerStat(name: "Andre-Frank Zambo Anguissa", country: "CM", value: 2.1),
            PlayerStat(name: "Rasmus Kristensen", country: "DK", value: 2.0)
        ]
    ),
])

let goalkeepingStats = StatsGroup(category: "Goalkeeping", categories: [
    StatCategory(
        title: "Clean sheets",
        stats: [
            PlayerStat(name: "Emiliano Martinez", country: "AR", value: 3),
            PlayerStat(name: "Yassine Bounou", country: "MA", value: 3),
            PlayerStat(name: "Jordan Pickford", country: "GB", value: 3)
        ]
    ),
    StatCategory(
        title: "Save percentage",
        stats: [
            PlayerStat(name: "Aymen Dahmen", country: "TN", value: 90),
            PlayerStat(name: "Wojciech Szczesny", country: "PL", value: 82.1),
            PlayerStat(name: "Andries Noppert", country: "NL", value: 81.8)
        ]
    ),
    StatCategory(
        title: "Saves per 90",
        stats: [
            PlayerStat(name: "Wojciech Szczesny", country: "PL", value: 5.8),
            PlayerStat(name: "Vanja Milinkovic-Savic", country: "RS", value: 5.3),
            PlayerStat(name: "Mohammed Al Owais", country: "SA", value: 4.7)
        ]
    ),
    StatCategory(
        title: "Goals prevented",
        stats: [
            PlayerStat(name: "Dominik Livakovic", country: "HR", value: 3.5),
            PlayerStat(name: "Wojciech Szczesny", country: "PL", value: 3.4),
            PlayerStat(name: "Andries Noppert", country: "NL", value: 2.5)
        ]
    ),
    StatCategory(
        title: "Goals conceded per 90",
        stats: [
            PlayerStat(name: "Keylor Navas", country: "CR", value: 3.7),
            PlayerStat(name: "Vanja Milinkovic-Savic", country: "RS", value: 2.7),
            PlayerStat(name: "Lawrence Ati-Zigi", country: "GH", value: 2.3)
        ]
    )
])

let disciplinaryStats = StatsGroup(category: "Discipline", categories: [
    StatCategory(
        title: "Fouls committed per 90",
        stats: [
            PlayerStat(name: "Issam Jebali", country: "TN", value: 4.9),
            PlayerStat(name: "Ahmadou Bamba Dieng", country: "SN", value: 4.6),
            PlayerStat(name: "Andreas Cornelius", country: "DK", value: 4.0)
        ]
    ),
    StatCategory(
        title: "🟨 Yellow cards",
        stats: [
            PlayerStat(name: "Gonzalo Montiel", country: "AR", value: 3),
            PlayerStat(name: "Marcos Acuna", country: "AR", value: 3),
            PlayerStat(name: "Abdulelah Al Amri", country: "SA", value: 2)
        ]
    ),
    StatCategory(
        title: "🟥 Red cards",
        stats: [
            PlayerStat(name: "Denzel Dumfries", country: "NL", value: 1),
            PlayerStat(name: "Vincent Aboubakar", country: "CM", value: 1),
            PlayerStat(name: "Walid Cheddira", country: "MA", value: 1)
        ]
    ),
])

let allStats = [topStatsData ,attackStats, defenseStats, goalkeepingStats, disciplinaryStats]
