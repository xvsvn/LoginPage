//
//  SignUpScreen.swift
//  LoginPage
//
//  Created by Xasan Xasanov on 10/03/22.
//

import SwiftUI

struct SignUpScreen: View {
    @Environment(\.presentationMode) var presentation
    @State var FirstName = ""
    @State var LastName = ""
    @State var email = ""
    @State var adress = ""
    @State var password = ""
 
    
    var body: some View {
        VStack(spacing:18) {
           Spacer()
            
           
               .font(.system(size: 30))
            TextField("FirstName", text: $FirstName)
                .frame(height:45).padding(.leading,10)
                .background(Color.gray.opacity(0.2)).cornerRadius(20)
            TextField("LastName", text: $email)
                .frame(height:45).padding(.leading,10)
                .background(Color.gray.opacity(0.2)).cornerRadius(20)
            TextField("Email", text: $email)
                .frame(height:45).padding(.leading,10)
                .background(Color.gray.opacity(0.2)).cornerRadius(20)
            TextField("Adress", text: $adress)
                .frame(height:45).padding(.leading,10)
                .background(Color.gray.opacity(0.2)).cornerRadius(20)
            SecureField("Password", text: $password)
                .frame(height:45).padding(.leading,10)
                .background(Color.gray.opacity(0.2)).cornerRadius(20)
            
            Button(action: {
                
            }, label: {
                HStack{
                    Spacer()
                    Text("Sign Up").foregroundColor(.white)
                    Spacer()
                }
            }).frame(height:45)
            .background(Color.red).cornerRadius(20)
           
            Spacer()
            HStack{
                Text("Already have an account?")
                    .foregroundColor(.blue)
                Button(action: {
                    presentation.wrappedValue.dismiss()
                }, label: {
                    Text("Sign In")
                        .font(.system(size: 18)).foregroundColor(.blue)
                        .bold()
                })

            }
        }.padding()

    }


struct SignUpScreen_Previews: PreviewProvider {
    static var previews: some View {
        SignUpScreen()
    }
}
}
