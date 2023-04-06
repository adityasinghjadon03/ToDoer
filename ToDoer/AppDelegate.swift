//
//  AppDelegate.swift
//  ToDoer
//
//  Created by Aditya Singh on 04/04/23.
//

import Foundation
import Firebase

class AppDelegate: UIResponder, UIApplicationDelegate {
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        
        FirebaseApp.configure()
        
        return true
    }
}
