//
//  ContentView.swift
//  ToDoList
//
//  Created by Lina Fadilah on 7/17/23.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationView {
            LoginView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
