//
//  MyAppModel.swift
//  ToDoer
//
//  Created by Aditya Singh on 05/04/23.
//

import Foundation

struct User: Hashable {
    var id: String
    var firstName: String
    var lastName: String
    var email: String
}

struct CustomAlertInfo {
    var title: String
    var description: String
}

struct Task: Hashable, Identifiable {
    var id: String
    var text: String
    var dateCreated: Date
    var isCompleted: Bool
    var lastUpdated: Date?
}
