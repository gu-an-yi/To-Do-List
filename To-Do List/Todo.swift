//
//  Todo.swift
//  To-Do List
//
//  Created by Lee Guan Yi on 25/6/22.
//

import Foundation

struct Todo: Identifiable{
    
    let id = UUID()
    var title: String
    var isCompleted: Bool = false
    var details: String
    var newTodo: Bool = false
    
}
