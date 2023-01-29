//
//  Onboarding.swift
//  Little Lemon
//
//  Created by Vitaliy Iakushev on 29.01.2023.
//

import SwiftUI

let kFirstName = "first name key"
let kLastName = "last name key"
let kEmail = "email key"
let kIsLoggedIn = "kIsLoggedIn"


struct Onboarding: View {
    @State var firstName = ""
    @State var lastName = ""
    @State var email = ""
    @State var isLoggedIn = false
    
    
    
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: Home(), isActive: $isLoggedIn) {
                    EmptyView()
                }
            
                TextField("First Name", text: $firstName)
                    .padding()
                TextField("Last Name", text: $lastName)
                    .padding()
                TextField("E-mail", text: $email)
                    .padding()
                    .keyboardType(.emailAddress)
                    .textContentType(.emailAddress)
                
                Button("Register") {
                    if !firstName.isEmpty && !lastName.isEmpty && !email.isEmpty {
                        UserDefaults.standard.set(firstName, forKey: kFirstName)
                        UserDefaults.standard.set(lastName, forKey: kLastName)
                        UserDefaults.standard.set(email, forKey: kEmail)
                        
                        UserDefaults.standard.set(true, forKey: kIsLoggedIn)
                        
                        isLoggedIn = true
                        print("its ok")
                        
                    } else {
                        print("wrong data. make alert later")
                        
                    }
                }
                //            .alert("Order placed, thanks!",
                //                   isPresented: $showAlert) {
                //                Button("OK", role: .cancel) { }
                //            }
            } .onAppear {
                if UserDefaults.standard.bool(forKey: kIsLoggedIn) {
                    isLoggedIn = true
                }
            }
        }
        
        
    }
    
}

struct Onboarding_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding()
    }
}
