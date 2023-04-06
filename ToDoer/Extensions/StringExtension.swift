//
//  StringExtension.swift
//  ToDoer
//
//  Created by Aditya Singh on 04/04/23.
//

import Foundation

extension String {
    var isValidEmail: Bool {
        NSPredicate(format: "SELF MATCHES %@",
                    "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}").evaluate(with: self)
    }
    
    var isValidPassword: Bool {
        NSPredicate(format: "SELF MATCHES %@ ",
                    "^(?=.*[a-z])(?=.*[0-9])(?=.*[A-Z]).{8,}$") .evaluate (with: self)
    }
}
