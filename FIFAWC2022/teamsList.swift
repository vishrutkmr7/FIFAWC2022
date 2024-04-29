//
//  teamsList.swift
//  FIFAWC2022
//
//  Created by Vishrut Jha on 3/10/23.
//

import Foundation

struct Team: Identifiable {
    let id: UUID = UUID()
    let name: String
    let description: String
    let group: String
    let flag: String
    let video: String
}

extension Team: Equatable {
    static func == (lhs: Team, rhs: Team) -> Bool {
        lhs.id == rhs.id
    }
}


func flag(country:String) -> String {
    if country == "WAL"{
        return "🏴󠁧󠁢󠁷󠁬󠁳󠁿"
    } else {
        let base : UInt32 = 127397
        var s = ""
        for v in country.unicodeScalars {
            s.unicodeScalars.append(UnicodeScalar(base + v.value)!)
        }
        return String(s)
    }
}


var teamsList = [
    Team(
        name: "Qatar",
        description: "The Qatar national football team represents Qatar in international football, and is controlled by the Qatar Football Association and AFC. The team has appeared in ten Asian Cup tournaments and won it once in 2019. They play their home games at Khalifa International Stadium and Jassim Bin Hamad Stadium. The latter is considered the home stadium for the team.",
        group: "A",
        flag: flag(country: "QA"),
        video: "https://www.youtube.com/embed/-F9WGMM8J48"),
    Team(
        name: "Ecuador",
        description: "The Ecuador national football team represents Ecuador in men's international football and is controlled by the Ecuadorian Football Federation (FEF). They joined FIFA in 1926 and CONMEBOL a year later.",
        group: "A",
        flag: flag(country: "EC"),
        video: "https://www.youtube.com/embed/-F9WGMM8J48"),
    Team(
        name: "Senegal",
        description: "The Senegal national football team, nicknamed the Lions of Teranga, represents Senegal in international association football and is operated by the Senegalese Football Federation. One of Africa's most famous national football teams, Senegal reached the quarter-finals of the 2002 FIFA World Cup, becoming the second team from Africa (after Cameroon in 1990). They managed to upset defending world champions France, finish second in their group, and beat Sweden in extra time in the round of 16, before losing to Turkey in the quarter-finals.",
        group: "A",
        flag: flag(country: "SN"),
        video: "https://www.youtube.com/embed/-F9WGMM8J48"),
    Team(
        name: "Netherlands",
        description: "The Netherlands national football team (Dutch: Het Nederlands Elftal) has represented the Netherlands in international men's football matches since 1905. The men's national team is controlled by the Royal Dutch Football Association (KNVB), the governing body for football in the Netherlands, which is a part of UEFA, and under the jurisdiction of FIFA. They are widely considered one of the best national teams in world football and widely regarded as one of the greatest national teams of all time. Most of the Netherlands' home matches are played at the Johan Cruyff Arena, De Kuip, Philips Stadion and De Grolsch Veste.",
        group: "A",
        flag: flag(country: "NL"),
        video: "https://www.youtube.com/embed/-F9WGMM8J48"),
    Team(
        name: "England",
        description: "The England national football team has represented England in international football since the first international match in 1872. It is controlled by The Football Association (FA), the governing body for football in England, which is affiliated with UEFA and comes under the global jurisdiction of world football's governing body FIFA. England competes in the three major international tournaments contested by European nations: the FIFA World Cup, the UEFA European Championship, and the UEFA Nations League.",
        group: "B",
        flag: flag(country: "GB"),
        video: "https://www.youtube.com/embed/-F9WGMM8J48"),
    Team(
        name: "Iran",
        description: "The Iran national football team, recognised by FIFA as IR Iran,[8] represents Iran in international football and is controlled by the Football Federation Islamic Republic of Iran[better source needed] (FFIRI).  At the continental level, Iran has won three Asian Cup championships in 1968, 1972 and 1976. The nation's best performance at the Olympics was reaching the quarterfinals at the 1976 Montreal Games. At the FIFA World Cup, Iran have qualified six times (1978, 1998, 2006, 2014, 2018 and 2022) but have never progressed beyond the group stages; they have won only two matches: against the United States in 1998 and Morocco in 2018.",
        group: "B",
        flag: flag(country: "IR"),
        video: "https://www.youtube.com/embed/-F9WGMM8J48"),
    Team(
        name: "USA",
        description: "The United States men's national soccer team (USMNT) represents the United States in men's international soccer competitions. The team is controlled by the United States Soccer Federation and is a member of FIFA and CONCACAF. The U.S. team has appeared in eleven FIFA World Cups, including the first in 1930, where they reached the semi-finals. They returned in 1934 and 1950, defeating England 1–0 in the latter, but did not qualify again until 1990. As host in 1994, the U.S. received an automatic berth and lost to Brazil in the round of sixteen. They qualified for the next five World Cups (seven consecutive appearances (1990–2014), a feat shared with only seven other nations),[9] becoming one of the tournament's regular competitors and often advancing to the knockout stage. The U.S. reached the quarter-finals in 2002, and controversially lost to Germany. In the 2009 Confederations Cup, the Americans eliminated top-ranked Spain in the semi-finals before losing to Brazil in the final, the team's only appearance in the final of a major intercontinental tournament.",
        group: "B",
        flag: flag(country: "US"),
        video: "https://www.youtube.com/embed/-F9WGMM8J48"),
    Team(
        name: "Wales",
        description: "The Wales national football team (Welsh: Tîm pêl-droed cenedlaethol Cymru) represents Wales in international football. It is controlled by the Football Association of Wales (FAW), the governing body for football in Wales and the third-oldest national football association in the world, founded in 1876 (146 years ago). The team has qualified for the FIFA World Cup twice, in 1958 and 2022. In 1958, they reached the quarter-finals before losing to eventual champions Brazil. They then went 58 years before reaching their second major tournament, when – following a rise of 109 places from an all-time low of 117th to a peak of 8th in the FIFA World Rankings between August 2011 and October 2015[3][4] – they qualified for UEFA Euro 2016, where they reached the semi-finals before again losing to the eventual champions, Portugal. A second successive UEFA European Championship followed when Wales reached the round of 16 of UEFA Euro 2020. They also progressed through UEFA Euro 1976 qualifying to the quarter-finals, though this was played on a two-legged, home-and-away basis and is not considered part of the finals tournament.",
        group: "B",
        flag: flag(country: "WAL"),
        video: "https://www.youtube.com/embed/-F9WGMM8J48"),
    Team(
        name: "Argentina",
        description: "The Argentina national football team has been a powerhouse in international football, controlled by the Argentine Football Association. Argentina's home stadium is the Estadio Monumental in Buenos Aires. They have won the FIFA World Cup twice, their latest victory coming in 1986, led by Diego Maradona. Additionally, they have claimed the Copa America title 15 times, with the latest win in 2021.",
        group: "C",
        flag: flag(country: "AR"),
        video: "https://www.youtube.com/embed/-F9WGMM8J48"),
    Team(
        name: "Saudi Arabia",
        description: "The Saudi Arabia national football team (Arabic: منتخب السعودية لكرة القدم) represents Saudi Arabia in men's international football and is controlled by the Saudi Arabian Football Federation. Saudi Arabia's first international was against British India in 1957. Since then, Saudi Arabia has competed in the FIFA World Cup six times (1994, 1998, 2002, 2006, 2018 and 2022), making their debut in 1994. Saudi Arabia has won the Asian Cup three times (1984, 1988 and 1996). Saudi Arabia is the first Asian nation to reach the knockout stage of the World Cup, achieving this feat in 1994 after defeating both Belgium and Morocco in the group stage.",
        group: "C",
        flag: flag(country: "SA"),
        video: "https://www.youtube.com/embed/-F9WGMM8J48"),
    Team(
        name: "Mexico",
        description: "The Mexico national football team (Spanish: Selección de fútbol de México) represents Mexico in international football and is governed by the Mexican Football Federation (Spanish: Federación Mexicana de Fútbol). It has represented Mexico in several FIFA World Cup tournaments, making its first appearance at the 1930 FIFA World Cup. Mexico is historically the most successful national team in the CONCACAF region, having qualified for 17 World Cup tournaments and winning 11 CONCACAF championships, although they have never made it past the quarter-finals of the World Cup.",
        group: "C",
        flag: flag(country: "MX"),
        video: "https://www.youtube.com/embed/-F9WGMM8J48"),
    Team(
        name: "Spain",
        description: "The Spain national football team (Spanish: Selección Española de Fútbol) has represented Spain in international men's football competition since 1920. It is governed by the Royal Spanish Football Federation (RFEF), the governing body for football in Spain. Spain is one of the most successful national teams in international competitions, having won the FIFA World Cup in 2010, as well as the UEFA European Championship in 1964, 2008 and 2012. The national team's traditional home kit consists of a red jersey with yellow trim, red shorts and red socks, whilst their current away kit is a white jersey with yellow trim, white shorts and white socks.",
        group: "E",
        flag: flag(country: "ES"),
        video: "https://www.youtube.com/embed/-F9WGMM8J48"),
    Team(
        name: "Costa Rica",
        description: "The Costa Rica national football team (Spanish: Selección de fútbol de Costa Rica) represents Costa Rica in men's international football and is supervised by the Costa Rican Football Federation (FEDEFUTBOL), the governing body for football in Costa Rica. Costa Rica has appeared in six FIFA World Cup tournaments, with their first appearance in 1990 in Italy. Their best performance was in 2014 when they reached the quarter-finals for the first time after topping their group over three former World Cup champions: Uruguay, Italy, and England.",
        group: "E",
        flag: flag(country: "CR"),
        video: "https://www.youtube.com/embed/-F9WGMM8J48"),
    Team(
        name: "Poland",
        description: "The Poland national football team (Polish: Reprezentacja Polski w piłce nożnej) has represented Poland in men's international football competitions since their first match in 1921. The team is controlled by the Polish Football Association (PZPN), the governing body for football in Poland. Poland have competed at eight FIFA World Cup, with their first appearance being in 1938, where they were eliminated by Brazil. The country's best result was a bronze medal, which Poland won in 1974 and 1982; this era is regarded as the golden era of Polish international football. At the UEFA European Championship, Poland's best result was a quarter-finals appearance at the 2016 tournament before losing to eventual champions Portugal. Overall, they have competed in four European Championship since their debut in 2008. They were co-hosts of the 2012 edition, along with Ukraine. Overall, Poland's best ever result in international football tournament was the gold medal won at the 1972 Munich Olympic, along with winning the silver medal at the 1976 Montreal Olympic and at the 1992 Barcelona Olympic.",
        group: "C",
        flag: flag(country: "PL"),
        video: "https://www.youtube.com/embed/-F9WGMM8J48"),
    Team(
        name: "France",
        description: "The France national football team (French: Équipe de France de football) represents France in men's international football and is controlled by the French Football Federation (Fédération française de football), also known as FFF. The team's colours are blue, white, and red, and the coq gaulois its symbol. France are colloquially known as Les Bleus (The Blues). They are the reigning world champions, having won the most recent World Cup final in 2018.",
        group: "D",
        flag: flag(country: "FR"),
        video: "https://www.youtube.com/embed/-F9WGMM8J48"),
    Team(
        name: "Australia",
        description: "The Australia men's national soccer team represents Australia in international men's soccer. Officially nicknamed the Socceroos, the team is controlled by the governing body for soccer in Australia, Football Australia, which is affiliated with the Asian Football Confederation (AFC) and the regional ASEAN Football Federation (AFF). Australia is the only national team to have been a champion of two confederations, having won the OFC Nations Cup four times between 1980 and 2004, as well as the AFC Asian Cup at the 2015 event on home soil. The team has represented Australia at the FIFA World Cup tournament on six occasions, in 1974 and from 2006 to 2022. The team also represented Australia at the FIFA Confederations Cup four times.",
        group: "D",
        flag: flag(country: "AU"),
        video: "https://www.youtube.com/embed/-F9WGMM8J48"),
    Team(
        name: "Denmark",
        description: "The Denmark men’s national football team (Danish: Danmarks herre-fodboldlandshold or herrelandsholdet) represents Denmark in men's international football competition. It is controlled by the Danish Football Association (DBU), the governing body for the football clubs which are organised under DBU. Denmark's home stadium is Parken Stadium in the Østerbro district of Copenhagen; their head coach is Kasper Hjulmand. Denmark were the winners of the Football at the 1906 Intercalated Games and silver medalists at the 1908 and 1912 Olympics. However, as amateurs who prohibited their internationals from becoming professionals at foreign clubs, Denmark did not qualify for the FIFA World Cup until 1986, although they won another Olympic silver in 1960.",
        group: "D",
        flag: flag(country: "DK"),
        video: "https://www.youtube.com/embed/-F9WGMM8J48"),
    Team(
        name: "Tunisia",
        description: "The Tunisia national football team represents Tunisia in men's international association football. The team is a member of both FIFA and CAF, the Confederation of African Football. It is governed by the Tunisian Football Federation, founded in 1957. Colloquially known as the Eagles of Carthage,[4] the team's colours are red and white, and the bald eagle is its symbol. Most of Tunisia's home matches are played at the Stade Olympique de Radès in Radès since 2001.[5] Jalel Kadri has been coaching the team since 30 January 2022.",
        group: "D",
        flag: flag(country: "TN"),
        video: "https://www.youtube.com/embed/-F9WGMM8J48"),
    Team(
        name: "Germany",
        description: "The Germany national football team (German: Deutsche Fußballnationalmannschaft or Die Mannschaft) represents Germany in men's international football and is governed by the German Football Association (Deutscher Fußball-Bund), founded in 1900. One of the most successful national teams in international competitions, Germany have won four FIFA World Cups (1954, 1974, 1990, 2014), three UEFA European Championships (1972, 1980, 1996), and one FIFA Confederations Cup (2017). They have also been runners-up three times in the European Championships, four times in the World Cup, and a further four third-place finishes at World Cups.",
        group: "E",
        flag: flag(country: "DE"),
        video: "https://www.youtube.com/embed/-F9WGMM8J48"),
    Team(
        name: "Japan",
        description: "The Japan national football team (Japanese: サッカー日本代表, Hepburn: Sakkā Nippon Daihyō) represents Japan in men's international football and is managed by the Japan Football Association (JFA), the governing body for football in Japan. The current team head coach is Hajime Moriyasu. Japan was among the most successful teams in Asia, having qualified for the last seven FIFA World Cups, and co-hosted the 2002 edition with South Korea. They won the AFC Asian Cup in 1992, 2000, 2004, and 2011.",
        group: "E",
        flag: flag(country: "JP"),
        video: "https://www.youtube.com/embed/-F9WGMM8J48"),
    Team(
        name: "Morocco",
        description: "The Morocco national football team (Arabic: منتخب المغرب لكرة القدم, romanized: Muntakhab al-Maghrib li-Kurat al-Qadam), is the national team of Morocco, overseen by the Royal Moroccan Football Federation. They have qualified for six FIFA World Cup tournaments, the first one being the 1970 World Cup. Their best performance was reaching the round of 16 in 1986. At the 2022 World Cup, they became the first African nation to reach the semi-finals, where they were eliminated by France.",
        group: "F",
        flag: flag(country: "MA"),
        video: "https://www.youtube.com/embed/-F9WGMM8J48"),
    Team(
        name: "Croatia",
        description: "The Croatia national football team (Croatian: Hrvatska nogometna reprezentacija) represents Croatia in men's international football matches and is controlled by the Croatian Football Federation, the governing body for football in Croatia. Most home matches are played at the Stadion Maksimir in Zagreb, which is also the home stadium of Dinamo Zagreb. Croatia's highest achievement is the 2018 FIFA World Cup final where they lost 4–2 to France.",
        group: "F",
        flag: flag(country: "HR"),
        video: "https://www.youtube.com/embed/-F9WGMM8J48"),
    Team(
        name: "Belgium",
        description: "The Belgium national football team (Dutch: Belgisch voetbalelftal, French: Équipe nationale de Belgique) officially represents Belgium in men's international football since their maiden match in 1904. The squad is under the global jurisdiction of FIFA and is governed in Europe by UEFA—both of which were co-founded by the Belgian team's governing body, the Royal Belgian Football Association (RBFA). Periods of regular Belgian representation at the highest international level, from 1920 to 1938, from 1982 to 2002 and again from 2014 onwards, have alternated with mostly unsuccessful qualification campaigns.",
        group: "F",
        flag: flag(country: "BE"),
        video: "https://www.youtube.com/embed/-F9WGMM8J48"),
    Team(
        name: "Canada",
        description: "The Canada men's national soccer team (French: Équipe canadienne de soccer masculine) represents Canada in men's international soccer competitions. It is fielded by the Canadian Soccer Association, the governing body of soccer in Canada, and competes as a member of CONCACAF, which encompasses the countries of North and Central America and the Caribbean region. The team's most significant achievements are winning the 2000 CONCACAF Gold Cup and qualifying for the 1986 FIFA World Cup in Mexico, where they failed to score a goal or obtain a point.",
        group: "F",
        flag: flag(country: "CA"),
        video: "https://www.youtube.com/embed/-F9WGMM8J48"),
    Team(
        name: "Brazil",
        description: "The Brazil national football team (Portuguese: Seleção Brasileira de Futebol), nicknamed Seleção (literally 'The Selected Team'), is administered by the Brazilian Football Confederation (CBF), the governing body for football in Brazil. They have been a member of FIFA since 1923 and a member of CONMEBOL since 1916. Brazil is the most successful national team in the FIFA World Cup with five championships in 1958, 1962, 1970, 1994 and 2002. They are the only national team to have played in every World Cup tournament.",
        group: "G",
        flag: flag(country: "BR"),
        video: "https://www.youtube.com/embed/-F9WGMM8J48"),
    Team(
        name: "Serbia",
        description: "The Serbia national football team (Serbian: Фудбалска репрезентација Србије/Fudbalska reprezentacija Srbije) represents Serbia in men's international football competition. It is controlled by the Football Association of Serbia, the governing body for football in Serbia. Serbia's home ground is the Rajko Mitić Stadium in Belgrade and their head coach is Dragan Stojković. Most of Serbia's home matches are played at the Rajko Mitić Stadium in Belgrade.",
        group: "G",
        flag: flag(country: "RS"),
        video: "https://www.youtube.com/embed/-F9WGMM8J48"),
    Team(
        name: "Switzerland",
        description: "The Switzerland national football team (German: Schweizer Fussballnationalmannschaft, French: Équipe nationale suisse de football, Italian: Nazionale svizzera di calcio, Romansh: Naziunala svizra da ballape) represents Switzerland in international football. The team is controlled by the Swiss Football Association. Switzerland's best ever performance at the FIFA World Cup was reaching the quarter-finals in 1934, 1938 and 1954. They also won silver at the 1924 Olympic Games.",
        group: "G",
        flag: flag(country: "CH"),
        video: "https://www.youtube.com/embed/-F9WGMM8J48"),
    Team(
        name: "Cameroon",
        description: "The Cameroon national football team (French: Équipe nationale de football du Cameroun) represents Cameroon in men's international football and is controlled by the Cameroonian Football Federation. The team has participated in eight FIFA World Cups, including the most recent in 2022, and won the 2017 Africa Cup of Nations. Their first World Cup was in 1982 where they were eliminated in the group stage. Four years later, they created one of the biggest upsets in World Cup history by beating holders Argentina in the opening game of the 1990 World Cup in Italy.",
        group: "G",
        flag: flag(country: "CM"),
        video: "https://www.youtube.com/embed/-F9WGMM8J48"),
    Team(
        name: "Portugal",
        description: "The Portugal national football team (Portuguese: Seleção Portuguesa de Futebol) represents Portugal in men's international football competition since 1921. It is controlled by the Portuguese Football Federation (FPF), the governing body for football in Portugal. Portugal's first appearance at a World Cup was in 1966, where they were eliminated in the semi-finals. Their best World Cup performance was in 2006, where they reached the semi-finals, losing 1–0 to France. Portugal won the UEFA European Championship in 2016, along with the inaugural UEFA Nations League in 2019.",
        group: "H",
        flag: flag(country: "PT"),
        video: "https://www.youtube.com/embed/-F9WGMM8J48"),
    Team(
        name: "Ghana",
        description: "The Ghana national football team represents Ghana in men's international football and is controlled by the Ghana Football Association, the governing body for football in Ghana. The team is popularly known as the Black Stars, with the bright yellow and red colours of the Ghana flag reflected in their jerseys. Ghana has won the Africa Cup of Nations four times, in 1963, 1965, 1978 and 1982. They have qualified for three FIFA World Cup tournaments, in 2006, 2010 and 2014, making them the third African team to reach the World Cup quarter-finals in 2010.",
        group: "H",
        flag: flag(country: "GH"),
        video: "https://www.youtube.com/embed/-F9WGMM8J48"),
    Team(
        name: "Uruguay",
        description: "The Uruguay national football team (Spanish: Selección de fútbol de Uruguay) represents Uruguay in men's international football and is controlled by the Uruguayan Football Association, the governing body for football in Uruguay. The current head coach is Diego Alonso. They have won the FIFA World Cup twice, including the inaugural tournament in 1930 where they defeated Argentina 4–2 in the final. They have won the Copa América 15 times, last winning the tournament in 2011.",
        group: "H",
        flag: flag(country: "UY"),
        video: "https://www.youtube.com/embed/-F9WGMM8J48"),
    Team(
        name: "South Korea",
        description: "The South Korea national football team (Korean: 대한민국 축구 국가대표팀) represents South Korea in international association football and is administered by the Korea Football Association. The team's core player pool is composed of players from the K League and overseas professional leagues. South Korea was the most successful Asian national team in the FIFA World Cup, having participated in ten World Cup tournaments, the fourth-highest number of participations among all nations. They have also participated in nine consecutive World Cup tournaments since 1986, which is the longest streak in Asia.",
        group: "H",
        flag: flag(country: "KR"),
        video: "https://www.youtube.com/embed/-F9WGMM8J48")
]
