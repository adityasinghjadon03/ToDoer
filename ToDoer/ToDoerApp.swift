//
//  ToDoerApp.swift
//  ToDoer
//
//  Created by Aditya Singh on 04/04/23.
//

import SwiftUI

@main
struct ToDoerApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    @StateObject var myAppVM = MyAppViewModel()
    
    var body: some Scene {
        WindowGroup {
            RootContentView()
                .environmentObject(myAppVM)
        }
    }
}
