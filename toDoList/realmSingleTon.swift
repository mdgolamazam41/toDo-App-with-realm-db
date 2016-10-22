//
//  realmSingleTon.swift
//  toDoList
//
//  Created by USER on 10/17/16.
//  Copyright © 2016 Parallaxlogic Infotech. All rights reserved.
//

import Foundation
//import Foundation
import RealmSwift

class moreUses{
    
    
    let realm = try! Realm()
    static var mrUser: moreUses!
    
    class func sharedInstance() -> moreUses {
        if mrUser != nil {
            return self.mrUser
        }
        return moreUses();
    }
    
    init() {
    }
}