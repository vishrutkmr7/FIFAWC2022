//
//  TeamView.swift
//  FIFAWC2022
//
//  Created by Vishrut Jha on 3/10/23.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    let videoID: String
    
    func makeUIView(context: Context) -> WKWebView {
        let webViewConfiguration = WKWebViewConfiguration()
        webViewConfiguration.allowsInlineMediaPlayback = true
        
        let webView = WKWebView(frame: .zero, configuration: webViewConfiguration)
        webView.scrollView.isScrollEnabled = false
        return webView
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let url = URL(string: "https://www.youtube.com/embed/\(videoID)?playsinline=1") {
            uiView.load(URLRequest(url: url))
        }
    }
}

struct TeamView: View {
    var selectedTeam: Team
    var body: some View {
        ScrollView{
            VStack{
                if let videoID = extractYouTubeID(urlString: selectedTeam.video) {
                    WebView(videoID: videoID)
                        .frame(height: 300)
                        .cornerRadius(12)
                        .overlay(
                            Image(systemName: "play.circle.fill")
                                .resizable()
                                .frame(width: 64, height: 64)
                                .foregroundColor(.white.opacity(0.8)
                                )
                        )
                }
                
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
    func extractYouTubeID(urlString: String) -> String? {
        let regex = "((?<=(v|V)/)|(?<=be/)|(?<=(\\?|\\&)v=)|(?<=embed/))([\\w-]+)"
        let extractedID = urlString.range(of: regex, options: .regularExpression)
        return extractedID.map { String(urlString[$0]) }
    }
}

struct TeamView_Previews: PreviewProvider {
    static var previews: some View {
        TeamView(selectedTeam: Team(name: "Qatar",
            description: "The Qatar national football team represents Qatar in international football, and is controlled by the Qatar Football Association and AFC. The team has appeared in ten Asian Cup tournaments and won it once in 2019. They play their home games at Khalifa International Stadium and Jassim Bin Hamad Stadium. The latter is considered the home stadium for the team.",
            group: "A",
            flag: flag(country: "QA"),
            video: "https://www.youtube.com/embed/-F9WGMM8J48"))
    }
}
