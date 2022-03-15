//
//  starterScreen.swift
//  LoginPage
//
//  Created by Xasan Xasanov on 15/03/22.
//

import SwiftUI

struct starterScreen: View {
    
    @EnvironmentObject var status: Status
    
    var body: some View {
        
        VStack{
            if self.status.userid != nil  {
                homeScreen()
            } else {
                ContentView()
            }
        }
        .onAppear{            
            status.listen()
            
        }
    }
}

struct starterScreen_Previews: PreviewProvider {
    static var previews: some View {
        starterScreen()
    }
}
