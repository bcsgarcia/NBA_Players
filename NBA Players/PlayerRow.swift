//
//  PlayerRow.swift
//  NBA Players
//
//  Created by Bruno Garcia on 27/06/19.
//  Copyright © 2019 Bruno Garcia. All rights reserved.
//

import SwiftUI

struct PlayerRow : View {
    var player: Player
    
    var body: some View {
        HStack {
            Image(player.imageName)
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .background(Circle()
                    .foregroundColor(player.team.color))
                
        
            Text(player.name)
                .font(.system(.largeTitle))
            
            Spacer()
        }
    }
}

#if DEBUG
struct PlayerRow_Previews : PreviewProvider {
    static var previews: some View {
        
        VStack {
            PlayerRow(player: players[0]).previewLayout(.fixed(width: 500, height: 100))
            PlayerRow(player: players[4]).previewLayout(.fixed(width: 500, height: 100))
           
            
        }
    }
}
#endif
