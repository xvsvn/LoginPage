//
//  starterScreen.swift
//  LoginPage
//
//  Created by Xasan Xasanov on 15/03/22.
//

import SwiftUI

struct starterScreen: View {
    @State var  status = UserDefaults.standard.value(forKey: "status") as? Bool ?? false
    var body: some View {
        
        VStack{
            if self.status {
                homeScreen()
            } else {
                ContentView()
            }
        }
        .onAppear{            
            let forName = NSNotification.Name("status")
            NotificationCenter.default.addObserver(forName: forName, object: nil, queue: .main ) { (_) in
                print("Notification Center")
                self.status = UserDefaults.standard.value(forKey:"status") as? Bool ?? false 
            }
            
        }
    }
}

struct starterScreen_Previews: PreviewProvider {
    static var previews: some View {
        starterScreen()
    }
}
