//
//  SelectedContentView.swift
//  ToDoer
//
//  Created by Aditya Singh on 04/04/23.
//

import SwiftUI

struct SelectedContentView: View {
    
    @EnvironmentObject var myAppVM: MyAppViewModel
    
    var body: some View {
        if myAppVM.userSignedIn {
            ToDoListView()
        } else {
            MainLoginView()
        }
    }
}

struct SelectedContentView_Previews: PreviewProvider {
    static var previews: some View {
        SelectedContentView()
    }
}
