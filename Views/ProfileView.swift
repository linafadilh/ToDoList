//
//  ProfileView.swift
//  ToDoList
//
//  Created by Lina Fadilah on 7/17/23.
//

import SwiftUI

struct ProfileView: View {
    @StateObject var viewModel = ProfileViewViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                
            }
            .navigationTitle("Profile")
            .toolbar{
                Button{
                    // action
                } label: {
                    Image(systemName: "plus")
                }
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
