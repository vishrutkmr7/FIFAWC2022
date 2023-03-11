//
//  TeamView.swift
//  FIFAWC2022
//
//  Created by Vishrut Jha on 3/10/23.
//

import SwiftUI
import AVKit

struct TeamView: View {
    var selectedTeam: Team
    var body: some View {
        ScrollView{
            VStack{
                VideoPlayer(player: AVPlayer(url: URL(string: selectedTeam.video)!)).frame(height: 300)
                
                Text("\(selectedTeam.flag) \(selectedTeam.name)")
                    .font(.largeTitle)
                
                Text(selectedTeam.description)
                    .lineSpacing(8)
                    .padding(.top, 20)
                    .padding(.leading, 20)
                    .padding(.trailing, 20)
            }
        }
    }
}

struct TeamView_Previews: PreviewProvider {
    static var previews: some View {
        TeamView(selectedTeam: Team(name: "Qatar",
                                    description: "The Qatar national football team represents Qatar in international football, and is controlled by the Qatar Football Association and AFC. The team has appeared in ten Asian Cup tournaments and won it once in 2019. They play their home games at Khalifa International Stadium and Jassim Bin Hamad Stadium. The latter is considered the home stadium for the team.",
                                    flag: flag(country: "QA"),
                                    video: "https://ananayarora.com/static/fifa.mp4"))
    }
}
