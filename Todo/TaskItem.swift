//
//  TaskItem.swift
//  Todo
//
//  Created by Leandro Meneguel on 11/24/25.
//

import Foundation

struct TaskItem: Identifiable {
    let id = UUID()
    var title: String
    var isComplete: Bool = false
    let createAt: Date = Date()
}
