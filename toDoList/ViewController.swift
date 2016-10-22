//
//  ViewController.swift
//  toDoList
//
//  Created by USER on 10/17/16.
//  Copyright © 2016 Parallaxlogic Infotech. All rights reserved.
//

import UIKit
//import CoreData
import RealmSwift
//let realmdb = try! Realm()

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let taskListA = TaskList()
        taskListA.name = "Wishlist"
        
        let wish1 = realmDB()
        wish1.name = "iPhone6s"
        wish1.notes = "64 GB, Gold"
        
        let wish2 = realmDB(value: ["name": "Game Console", "notes": "Playstation 4, 1 TB"])
        let wish3 = realmDB(value: ["Car", NSDate(), "Auto R8", false])
        
        taskListA.tasks.appendContentsOf([wish1, wish2, wish3])
        let taskListB = TaskList(value: ["MoviesList", NSDate(), [["The Martian", NSDate(), "", false], ["The Maze Runner", NSDate(), "", true]]])
        
        try! moreUses.sharedInstance().realm.write { () -> Void in
            moreUses.sharedInstance().realm.add([taskListA, taskListB])
            
        }
        
        print(moreUses.sharedInstance().realm.configuration.fileURL)
        
        let dataFromDb = moreUses.sharedInstance().realm.objects(TaskList)
        print("Data From Realm Counting")
        print(dataFromDb.count)
        print(dataFromDb)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

