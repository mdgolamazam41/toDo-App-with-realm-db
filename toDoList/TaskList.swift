//
//  TaskList.swift
//  toDoList
//
//  Created by USER on 10/17/16.
//  Copyright © 2016 Parallaxlogic Infotech. All rights reserved.
//

import Foundation
import RealmSwift

class TaskList: Object {
    
    dynamic var name = ""
    dynamic var createdAt = NSDate()
    let tasks = List<realmDB>()
    
// Specify properties to ignore (Realm won't persist these)
    
//  override static func ignoredProperties() -> [String] {
//    return []
//  }
}
