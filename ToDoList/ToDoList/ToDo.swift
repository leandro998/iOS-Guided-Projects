//
//  ToDo.swift
//  ToDoList
//
//  Created by Leandro Prado on 2020-05-18.
//  Copyright © 2020 Leandro Prado. All rights reserved.
//

import Foundation

struct ToDo {
    var title: String
    var isComplete: Bool
    var dueDate: Date
    var notes: String?
    
    static func loadToDos() -> [ToDo]? {
        return nil
    }
    
    static func loadSampleToDos() -> [ToDo] {
        let todo1 = ToDo(title: "one", isComplete: false, dueDate: Date(), notes: "note 1")
        let todo2 = ToDo(title: "two", isComplete: false, dueDate: Date(), notes: "note 2")
        let todo3 = ToDo(title: "three", isComplete: false, dueDate: Date(), notes: "note 3")
        
        return [todo1, todo2, todo3]
    }
    
    static let dueDateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.timeStyle = .short
        return formatter
    }()
}
