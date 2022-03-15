//
//  homeScreen.swift
//  LoginPage
//
//  Created by Xasan Xasanov on 15/03/22.
//

import SwiftUI

struct homeScreen: View {
    
    @EnvironmentObject var status: Status
    
    var body: some View {
        NavigationView{
            VStack{
                Button(action: {
                    UserDefaults.standard.removeObject(forKey: "userid")
                    status.listen()
                }, label: {
                    Text("LogOut")
                })
            }
            .navigationBarItems(leading: Image(systemName: "camera").foregroundColor(.red),
                                trailing: Image(systemName: "location")).foregroundColor(.red)
            .navigationBarTitle("Instagram", displayMode: .inline).foregroundColor(.red)
        }

    }
}

struct homeScreen_Previews: PreviewProvider {
    static var previews: some View {
        homeScreen()
    }
}
