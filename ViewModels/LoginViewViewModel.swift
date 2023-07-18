//
//  LoginViewViewModel.swift
//  ToDoList
//
//  Created by Lina Fadilah on 7/17/23.
//

import Foundation
import FirebaseAuth

class LoginViewViewModel: ObservableObject{
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage = ""
    
    init(){
        
    }
    
    func login(){
        guard validate() else{
            return
        }
        
        // try to login
        Auth.auth().signIn(withEmail: email, password: password)
        
        
    }
    
    func validate() -> Bool{
        errorMessage = ""
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty,
        !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            errorMessage = "Please fill in all fields"
            return false
        }
        
        // eamil@foo.com
        guard email.contains("@") && email.contains(".")else{
            errorMessage = "Please enter valid email."
            return false
        }
        
        return true
    }
}
