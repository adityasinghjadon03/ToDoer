//
//  SignInView.swift
//  ToDoer
//
//  Created by Aditya Singh on 04/04/23.
//

import SwiftUI

struct SignInView: View {
    
    @EnvironmentObject var myAppVM: MyAppViewModel
    
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        List {
            Section {
                TextField("Email", text: $email)
                    .textInputAutocapitalization(.never)
                    .autocorrectionDisabled()
                SecureField("Password", text: $password)
                    .textInputAutocapitalization(.never)
                    .autocorrectionDisabled()
            } header: {
                Text("Text Field Section")
            }
            Section {
                Button {
                    myAppVM.signIn(email: email, password: password)
                } label: {
                    Text("Sign In")
                }
                .disabled(email.isEmpty || password.isEmpty)
                Button(role: .destructive) {
                    email = ""
                    password = ""
                } label: {
                    Text("Cancel")
                }
            } header: {
                Text("Button Section")
            }
        }.navigationTitle("Sign In")
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
