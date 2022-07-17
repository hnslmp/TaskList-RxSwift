//
//  Task.swift
//  TaskList
//
//  Created by Hansel Matthew on 17/07/22.
//

import Foundation

enum Priority: Int {
    case high
    case medium
    case low
}

struct Task {
    let title: String
    let priority: Priority
}
