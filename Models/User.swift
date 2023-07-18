//
//  User.swift
//  ToDoList
//
//  Created by Lina Fadilah on 7/17/23.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
