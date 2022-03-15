//
//  ContentView.swift
//  LoginPage
//
//  Created by Xasan Xasanov on 10/03/22.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var status: Status
    @State var isModel:Bool = false
    @State var userid = ""
    @State var password = ""
    
    
    var body: some View {
   
        NavigationView {
           
          
        VStack(spacing:15) {
            Spacer()
      
            Image("pfp")
           
                .resizable()
                .frame(width: 100.0, height: 100.0)
                .cornerRadius(50)
            TextField("User ID", text: $userid) .frame(height:45).padding(.leading,15)
                .background(Color.gray.opacity(0.2)).cornerRadius(20)
            
            SecureField("User PW", text: $password)
                .frame(height:45).padding(.leading, 15)              
                .background(Color.gray.opacity(0.2)).cornerRadius(20)
            
            
            Button(action: {
                UserDefaults.standard.set("pdp", forKey: "userid")
                status.listen()
            }, label: {
                HStack{
                    Spacer()
                    Text("Sign In").foregroundColor(.white)
                    Spacer()
                }
            }).frame(height:45)
            .background(Color.red).cornerRadius(8)
           
            
            Spacer()
         
            HStack(spacing:10){
                Text("Dont't have an account?")
                    .foregroundColor(.blue)
               
                NavigationLink(destination: SignUpScreen()) {
                Text("Sign Up")
                .font(.system(size: 18)).foregroundColor(.blue)
                }
             
                .navigationBarTitle("Instagram" , displayMode: .inline )
            }

        }
            
    }.padding()

        }

     
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
