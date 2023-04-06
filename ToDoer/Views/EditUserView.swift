//
//  EditUserView.swift
//  ToDoer
//
//  Created by Aditya Singh on 06/04/23.
//

import SwiftUI

struct EditUserView: View {
    
    @EnvironmentObject var myAppVM: MyAppViewModel
    @Environment(\.dismiss) var dismiss
    
    @State var firstName = ""
    @State var lastName = ""
    @State var email = ""
    
    var body: some View {
        List {
            Section {
                TextField("FirstName", text: $firstName)
                TextField("LastName", text: $lastName)
            } header: {
                Text("Update First Name and Last Name")
            }
            Section {
                Button {
                    myAppVM.updateUserData(firstName: firstName, lastName: lastName)
                } label: {
                    Text("Update User")
                        .frame(maxWidth: .infinity, alignment: .center)
                }.disabled(firstName.isEmpty || lastName.isEmpty)
            }.navigationTitle("Edit User")
        }
    }
    
    struct EditUserView_Previews: PreviewProvider {
        static var previews: some View {
            EditUserView()
        }
    }
}
