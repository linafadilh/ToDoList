//
//  LoginView.swift
//  ToDoList
//
//  Created by Lina Fadilah on 7/17/23.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewViewModel()
    
    var body: some View {
        VStack{
            // Header
            HeaderView(title: "To Do List",
                       subtitle: "Get things done",
                       angle: 15,
                       background: .pink)
            // Login Form
            Form{
                TextField("Email Address", text: $viewModel.email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocapitalization(.none)
                    .autocorrectionDisabled()
                
                SecureField("Password", text: viewModel.password)
                    .textFieldStyle(DefaultTextFieldStyle())
                TLButton(title: "Log In",
                         background: .blue
                ){
                    // attemp login
                }
                .padding()
            }
            // Create Account
            VStack{
                Text("New around here?")
                NavigationLink("Create An Account",
                               destination: RegisterView())
            }
            .padding(.bottom, 50)
            Spacer()
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
