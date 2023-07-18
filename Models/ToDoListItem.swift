//
//  ToDoListItem.swift
//  ToDoList
//
//  Created by Lina Fadilah on 7/17/23.
//

import Foundation


struct ToDOListItem: Codable, Identifiable {
    let id: String
    let title: String
    let dueDate: TimeInterval
    let createdData: TimeInterval
    var isDone: Bool
    
    mutating func setDone(_ state: Bool){
        isDone = state
    }
    
}
