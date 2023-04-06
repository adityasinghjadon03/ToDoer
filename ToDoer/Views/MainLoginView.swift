//
//  MainLoginView.swift
//  ToDoer
//
//  Created by Aditya Singh on 04/04/23.
//

import SwiftUI

struct MainLoginView: View {
    
    @EnvironmentObject var myAppVM: MyAppViewModel
    
    var body: some View {
        List {
            NavigationLink("SignIn / Already Registered", value: "signIn")
            NavigationLink("SignUp / Create a new user", value: "signUp")
        }
        .navigationTitle("ToDoer")
    }
}

struct MainLoginView_Previews: PreviewProvider {
    static var previews: some View {
        MainLoginView()
    }
}
