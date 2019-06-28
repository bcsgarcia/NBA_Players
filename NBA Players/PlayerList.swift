//
//  PlayerList.swift
//  NBA Players
//
//  Created by Bruno Garcia on 27/06/19.
//  Copyright © 2019 Bruno Garcia. All rights reserved.
//

import SwiftUI

struct PlayerList : View {
    var body: some View {
        NavigationView {
            List(players) { player in
                
                NavigationButton(destination: PlayerView(player: player)){
                    PlayerRow(player: player)
                }
                
                
                
            }.navigationBarTitle(Text("NBA Final Players"), displayMode: .large)
        }
    }
}

#if DEBUG
struct PlayerList_Previews : PreviewProvider {
    static var previews: some View {
        PlayerList()
    }
}
#endif
